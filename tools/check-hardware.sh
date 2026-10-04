#!/usr/bin/env bash
# check-hardware.sh - is zenbook-duo-linux for this machine? Read-only, no root needed.
#   curl -fsSL https://raw.githubusercontent.com/burakgon/zenbook-duo-linux/main/tools/check-hardware.sh | bash
set -u

if [[ -t 1 ]]; then G=$'\e[32m' Y=$'\e[33m' R=$'\e[31m' B=$'\e[1m' N=$'\e[0m'; else G="" Y="" R="" B="" N=""; fi
fail=0
pass() { printf '  %s✓%s %-22s %s\n' "$G" "$N" "$1" "$2"; }
warn() { printf '  %s!%s %-22s %s\n' "$Y" "$N" "$1" "$2"; }
bad() { printf '  %s✗%s %-22s %s\n' "$R" "$N" "$1" "$2"; fail=1; }
dmi() { cat "/sys/class/dmi/id/$1" 2>/dev/null; }
pci() { [[ -n "$(lspci -d "$1" 2>/dev/null)" ]] || grep -qi "${1/:/.*}" /sys/bus/pci/devices/*/uevent 2>/dev/null; }

printf '%szenbook-duo-linux hardware check%s\n' "$B" "$N"

board="$(dmi board_name)"
if [[ "$(dmi sys_vendor)" == ASUS* && $board == UX8407* ]]; then
	pass "Model" "$(dmi product_name) ($board)"
else
	bad "Model" "$(dmi sys_vendor) $(dmi product_name) ($board): the modules target the UX8407AA and refuse other boards"
fi

cpu="$(grep -m1 'model name' /proc/cpuinfo | cut -d: -f2 | sed 's/^ *//')"
if grep -q '^model[[:space:]]*: 204$' /proc/cpuinfo && grep -q GenuineIntel /proc/cpuinfo; then
	pass "CPU" "$cpu (Panther Lake)"
else
	bad "CPU" "$cpu: not Panther Lake"
fi

for t in RAYD0001 RAYD0002; do
	if [[ -e /sys/bus/acpi/devices/$t:00 ]]; then
		drv="$(basename "$(readlink /sys/bus/i2c/devices/i2c-$t:00/driver 2>/dev/null)" 2>/dev/null)"
		pass "Touchscreen $t" "present${drv:+, driver $drv}"
	else
		bad "Touchscreen $t" "missing"
	fi
done

if [[ -r /sys/bus/pci/devices/0000:00:1f.3/subsystem_device ]]; then
	sub="$(cat /sys/bus/pci/devices/0000:00:1f.3/subsystem_vendor /sys/bus/pci/devices/0000:00:1f.3/subsystem_device | sed 's/0x//' | tr -d '\n')"
	[[ $sub == 10431444 ]] && pass "Audio" "SoundWire, subsystem 1043:1444 (CS42L43 + 2x CS35L56)" ||
		warn "Audio" "subsystem ${sub:0:4}:${sub:4}, expected 1043:1444"
	grep -q sof-soundwire /proc/asound/cards 2>/dev/null && pass "Sound card" "sof-soundwire registered" ||
		warn "Sound card" "no sof-soundwire card yet (7.2.x needs the audio-ghost-rt722 module)"
fi

pci 8086:e445 && pass "Sensor hub (ISH)" "8086:e445" || bad "Sensor hub (ISH)" "missing"
ls /sys/bus/ishtp/devices/* >/dev/null 2>&1 && pass "ISH firmware" "running" ||
	warn "ISH firmware" "not running: no rotation/ambient light until sensors-ish-firmware is applied"
pci 8086:e440 && pass "Wi-Fi" "Intel BE201 (8086:e440)" || warn "Wi-Fi" "Intel BE201 not found"

if grep -qs '0b05' /sys/bus/usb/devices/*/idVendor && grep -qs '1cd7' /sys/bus/usb/devices/*/idProduct; then
	pass "Keyboard" "docked (USB 0b05:1cd7)"
else
	warn "Keyboard" "not docked over USB (fine; Bluetooth is 0b05:1cd8)"
fi

krel="$(uname -r)"
case "$krel" in
7.[2-9]* | [89].*) pass "Kernel" "$krel" ;;
*) warn "Kernel" "$krel: tested on 7.2.x and 7.3; older kernels lack Panther Lake fixes" ;;
esac

. /etc/os-release 2>/dev/null
if [[ " ${ID:-} ${ID_LIKE:-} " == *" arch "* ]]; then
	pass "Distribution" "${PRETTY_NAME:-$ID} (fully supported)"
else
	warn "Distribution" "${PRETTY_NAME:-unknown}: pacman/DKMS helpers assume Arch; config modules still apply"
fi

if [[ ${XDG_SESSION_TYPE:-} == wayland && ${XDG_CURRENT_DESKTOP:-} == *KDE* ]]; then
	pass "Desktop" "KDE Plasma (Wayland): desktop-kde-duo applies"
else
	warn "Desktop" "${XDG_CURRENT_DESKTOP:-unknown}/${XDG_SESSION_TYPE:-?}: desktop-kde-duo needs KDE Plasma on Wayland"
fi

echo
if ((fail)); then
	printf '%sThis repository is not written for this machine.%s\n' "$R" "$N"
	exit 1
fi
printf '%sThis repository is for you.%s Next: git clone https://github.com/burakgon/zenbook-duo-linux && cd zenbook-duo-linux && ./duo list\n' "$G" "$N"
