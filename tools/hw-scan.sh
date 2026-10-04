#!/usr/bin/env bash
# hw-scan.sh - reproducible, read-only hardware scan for the ASUS Zenbook Duo (UX8407AA).
#
# Collects everything needed to diagnose Linux hardware support into a timestamped
# snapshot directory and finishes with an automatic health summary (PASS/WARN/FAIL).
# Serial numbers, UUIDs, MAC/BT addresses and SSIDs are redacted unless --no-redact.
#
# Usage: tools/hw-scan.sh [--out DIR] [--acpi] [--no-redact] [--summary-only]

set -uo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_BASE="$ROOT_DIR/hardware-scan/snapshots"
WITH_ACPI=0
REDACT=1
SUMMARY_ONLY=0

while (($#)); do
	case "$1" in
	--out) OUT_BASE="$2"; shift ;;
	--acpi) WITH_ACPI=1 ;;
	--no-redact) REDACT=0 ;;
	--summary-only) SUMMARY_ONLY=1 ;;
	-h | --help) sed -n '2,9p' "$0"; exit 0 ;;
	*) echo "unknown option: $1" >&2; exit 2 ;;
	esac
	shift
done

KREL="$(uname -r)"
STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="$OUT_BASE/${STAMP}_${KREL}"
mkdir -p "$OUT"

# Privileged reads go through sudo when not root: it may prompt once on a terminal.
# Without a terminal only cached credentials are used (sudo -n), so a non-interactive
# run never counts failed password attempts (faillock) and just skips those reads.
if ((EUID == 0)); then
	SUDO=()
elif [[ -t 0 ]] || sudo -n true 2>/dev/null; then
	SUDO=(sudo)
else
	SUDO=(sudo -n)
fi
as_root() { "${SUDO[@]}" "$@"; }

have() { command -v "$1" >/dev/null 2>&1; }

# Collect identifiers that must never leave the machine, then scrub them from all files.
SECRETS=()
collect_secrets() {
	local f v
	for f in product_serial board_serial chassis_serial product_uuid; do
		v="$(as_root cat /sys/class/dmi/id/$f 2>/dev/null | tr -d '[:space:]')"
		[[ -n $v && $v != "Default*" ]] && SECRETS+=("$v")
	done
	v="$(cat /etc/machine-id 2>/dev/null)"
	[[ -n $v ]] && SECRETS+=("$v")
}

redact_file() {
	local file="$1" s
	((REDACT)) || return 0
	for s in "${SECRETS[@]}"; do
		[[ -n $s ]] && sed -i "s/$(printf '%s' "$s" | sed 's/[][\.*^$/]/\\&/g')/<REDACTED>/g" "$file"
	done
	# MAC / BT addresses and Wi-Fi SSIDs
	sed -i -E \
		-e 's/([0-9a-fA-F]{2}[:-]){5}[0-9a-fA-F]{2}/<MAC>/g' \
		-e 's/(SSID[:=] *).*/\1<REDACTED>/' \
		-e "s/(ssid ).*/\1<REDACTED>/" \
		-e "s/(SSID=')[^']*'/\1<REDACTED>'/g" "$file"
}

# section FILE TITLE CMD... : append a titled command output block to FILE
section() {
	local file="$OUT/$1" title="$2"
	shift 2
	{
		printf '\n===== %s =====\n$ %s\n' "$title" "$*"
		"$@" 2>&1
	} >>"$file"
}

# rsection: same as section but runs the command as root
rsection() {
	local file="$1" title="$2"
	shift 2
	section "$file" "$title" as_root "$@"
}

dump_sysfs_dir() { # print "name=value" for every readable regular file in a directory
	local d="$1" f
	for f in "$d"/*; do
		[[ -f $f && -r $f ]] || continue
		printf '%s=%s\n' "${f##*/}" "$(head -c 200 "$f" 2>/dev/null | tr '\n' ' ')"
	done
}

scan_system() {
	section system.txt "kernel" uname -a
	section system.txt "os-release" cat /etc/os-release
	section system.txt "cmdline" cat /proc/cmdline
	section system.txt "dmi" dump_sysfs_dir /sys/class/dmi/id
	section system.txt "boots" journalctl --list-boots --no-pager
	section system.txt "installed kernels" bash -c "pacman -Q | grep -E '^linux|firmware|sof-firmware|mesa|vulkan-intel|thermald|intel_lpmd|power-profiles'"
	section system.txt "kernel config (selected)" bash -c "zcat /proc/config.gz | grep -E '^CONFIG_(HID_ASUS|ASUS_|TOUCHSCREEN_RAYDIUM|I2C_HID|INTEL_ISH|HID_SENSOR|DRM_XE|PREEMPT|HZ=|SCHED_CLASS_EXT|HID_BPF|ACPI_TABLE_UPGRADE|MODULE_SIG)'"
}

scan_cpu() {
	section cpu.txt "lscpu" lscpu
	section cpu.txt "intel_pstate" dump_sysfs_dir /sys/devices/system/cpu/intel_pstate
	section cpu.txt "per-cpu cpufreq" bash -c 'for c in /sys/devices/system/cpu/cpu[0-9]*; do n=${c##*/}; printf "%s gov=%s epp=%s min=%s max=%s hwmax=%s cap=%s cppc_high=%s\n" $n "$(cat $c/cpufreq/scaling_governor)" "$(cat $c/cpufreq/energy_performance_preference 2>/dev/null)" "$(cat $c/cpufreq/scaling_min_freq)" "$(cat $c/cpufreq/scaling_max_freq)" "$(cat $c/cpufreq/cpuinfo_max_freq)" "$(cat $c/cpu_capacity 2>/dev/null)" "$(cat $c/acpi_cppc/highest_perf 2>/dev/null)"; done'
	section cpu.txt "cpuidle cpu0" bash -c 'for s in /sys/devices/system/cpu/cpu0/cpuidle/state*; do printf "%s %s lat=%s res=%s usage=%s disable=%s\n" ${s##*/} "$(cat $s/name)" "$(cat $s/latency)" "$(cat $s/residency)" "$(cat $s/usage)" "$(cat $s/disable)"; done'
	section cpu.txt "vulnerabilities" grep -r . /sys/devices/system/cpu/vulnerabilities/
}

scan_buses() {
	section pci.txt "lspci -nnk" lspci -nnk
	rsection pci.txt "lspci -vvv" lspci -vvv
	section pci.txt "runtime pm / aspm" bash -c 'echo "aspm policy: $(cat /sys/module/pcie_aspm/parameters/policy)"; for d in /sys/bus/pci/devices/*; do a=""; for x in l1_aspm l1_1_aspm l1_2_aspm l1_1_pcipm l1_2_pcipm; do [ -f $d/link/$x ] && a="$a $x=$(cat $d/link/$x)"; done; printf "%s drv=%s ctl=%s st=%s%s\n" ${d##*/} "$(basename "$(readlink $d/driver 2>/dev/null)" 2>/dev/null)" "$(cat $d/power/control)" "$(cat $d/power/runtime_status)" "$a"; done'
	section usb.txt "lsusb" lsusb
	section usb.txt "lsusb -t" lsusb -t
	rsection usb.txt "lsusb -v (ASUS/camera)" bash -c 'lsusb -v -d 0b05: 2>/dev/null; lsusb -v -d 13d3: 2>/dev/null'
	section usb.txt "typec" bash -c 'for p in /sys/class/typec/port*; do echo "${p##*/}: data=$(cat $p/data_role 2>/dev/null) power=$(cat $p/power_role 2>/dev/null)"; done'
	section usb.txt "thunderbolt" bash -c 'boltctl list 2>&1; for d in /sys/bus/thunderbolt/devices/domain*; do echo "${d##*/}: security=$(cat $d/security) iommu=$(cat $d/iommu_dma_protection)"; done'
}

scan_input() {
	section input.txt "/proc/bus/input/devices" cat /proc/bus/input/devices
	have libinput && rsection input.txt "libinput list-devices" libinput list-devices
	section input.txt "hid devices" bash -c 'for d in /sys/bus/hid/devices/*; do echo "${d##*/} driver=$(basename "$(readlink $d/driver 2>/dev/null)" 2>/dev/null) name=$(grep HID_NAME $d/uevent | cut -d= -f2)"; done'
	if have hid-decode; then
		local d
		for d in /sys/bus/hid/devices/*; do
			rsection hid-descriptors.txt "${d##*/}" hid-decode "$d/report_descriptor"
		done
	fi
	section input.txt "i2c devices" bash -c 'for d in /sys/bus/i2c/devices/i2c-*:*; do [ -e "$d" ] && echo "${d##*/} driver=$(basename "$(readlink $d/driver 2>/dev/null)" 2>/dev/null)"; done; ls /sys/bus/i2c/devices/'
	section input.txt "iio" bash -c 'for d in /sys/bus/iio/devices/iio:device*; do [ -e "$d" ] && echo "${d##*/} name=$(cat $d/name)"; done'
	section input.txt "asus-nb-wmi attrs" dump_sysfs_dir /sys/devices/platform/asus-nb-wmi
	section input.txt "leds" bash -c 'for l in /sys/class/leds/*; do echo "${l##*/}: $(cat $l/brightness)/$(cat $l/max_brightness)"; done'
}

scan_display() {
	local dbg=/sys/kernel/debug/dri/0000:00:02.0 c
	section display.txt "connectors" bash -c 'for c in /sys/class/drm/card*-*; do echo "${c##*/}: $(cat $c/status) $(cat $c/enabled) $(cat $c/dpms 2>/dev/null)"; done'
	section display.txt "backlight" bash -c 'for b in /sys/class/backlight/*; do echo "${b##*/}: type=$(cat $b/type) brightness=$(cat $b/brightness) max=$(cat $b/max_brightness) actual=$(cat $b/actual_brightness 2>&1)"; done'
	for c in /sys/class/drm/card*-eDP-*; do
		have edid-decode && section display.txt "edid ${c##*/}" edid-decode "$c/edid"
	done
	rsection display.txt "i915_display_info" cat "$dbg/i915_display_info"
	rsection display.txt "psr status" bash -c "cat $dbg/eDP-*/i915_psr_status"
	rsection display.txt "fbc status" cat "$dbg/i915_fbc_status"
	rsection display.txt "dsc eDP-1" bash -c "cat $dbg/eDP-1/i915_dsc_fec_support; cat $dbg/eDP-1/i915_dp_max_link_rate; cat $dbg/eDP-1/i915_dp_force_link_rate"
	rsection display.txt "dmc" cat "$dbg/i915_dmc_info"
	rsection display.txt "xe params" bash -c 'for p in /sys/module/xe/parameters/*; do echo "${p##*/}=$(cat $p)"; done'
	have kscreen-doctor && section display.txt "kscreen-doctor" bash -c 'kscreen-doctor -o | sed "s/\x1b\[[0-9;]*m//g"'
}

scan_power() {
	section power.txt "power_supply" bash -c 'for p in /sys/class/power_supply/*; do echo "## ${p##*/}"; cat $p/uevent; ls $p | grep -E "charge_control|charge_behaviour"; done'
	section power.txt "charge threshold" cat /sys/class/power_supply/BAT0/charge_control_end_threshold
	section power.txt "platform profiles" bash -c 'for p in /sys/class/platform-profile/*; do echo "${p##*/}: $(cat $p/name) = $(cat $p/profile) [$(cat $p/choices)]"; done; echo "acpi: $(cat /sys/firmware/acpi/platform_profile)"'
	section power.txt "rapl" bash -c 'for z in /sys/class/powercap/intel-rapl*; do [ -f $z/name ] || continue; printf "%s %s en=%s" ${z##*/} "$(cat $z/name)" "$(cat $z/enabled)"; for i in 0 1 2; do [ -f $z/constraint_${i}_name ] && printf " %s=%sW" "$(cat $z/constraint_${i}_name)" "$(( $(cat $z/constraint_${i}_power_limit_uw)/1000000 ))"; done; echo; done'
	section power.txt "tcc offset" cat /sys/bus/pci/devices/0000:00:04.0/tcc_offset_degree_celsius
	section power.txt "dtt odvp" bash -c 'for o in /sys/bus/platform/devices/INTC10D4:00/odvp*; do echo "${o##*/}=$(cat $o)"; done'
	section power.txt "asus-armoury" bash -c 'for a in /sys/class/firmware-attributes/asus-armoury/attributes/*; do echo "${a##*/}=$(cat $a/current_value 2>/dev/null)"; done'
	section power.txt "sensors" sensors
	section power.txt "thermal zones" bash -c 'for t in /sys/class/thermal/thermal_zone*; do echo "${t##*/} $(cat $t/type) $(cat $t/temp)"; done'
	section power.txt "powerprofilesctl" powerprofilesctl
	section power.txt "services" systemctl is-active power-profiles-daemon thermald intel_lpmd tuned tlp auto-cpufreq
	section power.txt "sleep" bash -c 'echo "mem_sleep: $(cat /sys/power/mem_sleep)"; echo "state: $(cat /sys/power/state)"'
	rsection power.txt "pmc_core" bash -c 'P=/sys/kernel/debug/pmc_core; echo "slp_s0: $(cat $P/slp_s0_residency_usec)"; cat $P/substate_residencies; cat $P/package_cstate_show'
}

scan_audio_net_storage() {
	section audio.txt "cards" cat /proc/asound/cards
	section audio.txt "aplay -l" aplay -l
	section audio.txt "arecord -l" arecord -l
	have wpctl && section audio.txt "wpctl status" wpctl status
	section network.txt "iw dev" iw dev
	section network.txt "rfkill" rfkill
	section network.txt "bluetooth" bluetoothctl show
	rsection storage.txt "nvme list" nvme list
	rsection storage.txt "nvme smart-log" nvme smart-log /dev/nvme0
	rsection storage.txt "nvme apst" nvme get-feature /dev/nvme0 -f 0x0c -H
	section storage.txt "lsblk" lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINTS,MODEL
	section storage.txt "scheduler" cat /sys/block/nvme0n1/queue/scheduler
}

scan_logs() {
	rsection kernel-log.txt "dmesg (warn+)" dmesg --level=emerg,alert,crit,err,warn
	rsection kernel-log.txt "dmesg (full)" dmesg
	section kernel-log.txt "journal errors this boot" journalctl -b -p err --no-pager -o short-monotonic
	section modules.txt "lsmod" lsmod
	section modules.txt "modprobe.d" bash -c 'grep -H . /etc/modprobe.d/*.conf 2>/dev/null'
	section firmware.txt "fwupd devices" fwupdmgr get-devices --no-unreported-check
}

scan_acpi() {
	local adir="$OUT/acpi"
	mkdir -p "$adir"
	(cd "$adir" && as_root acpidump -b && as_root chown "$(id -u):$(id -g)" ./*.dat && rm -f msdm.dat) >/dev/null 2>&1
	if have iasl; then
		(cd "$adir" && for f in *.dat; do iasl -d "$f" >/dev/null 2>&1; done)
	fi
}

# ---------------------------------------------------------------- health summary
SUM="$OUT/summary.txt"
pass() { printf '[PASS] %s\n' "$*" | tee -a "$SUM"; }
warn() { printf '[WARN] %s\n' "$*" | tee -a "$SUM"; }
info() { printf '[INFO] %s\n' "$*" | tee -a "$SUM"; }
fail() { printf '[FAIL] %s\n' "$*" | tee -a "$SUM"; }

health_summary() {
	local k drv t mmio_pl1
	# the kernel log: dmesg needs root on most systems, the journal usually does not
	k="$(as_root dmesg 2>/dev/null || journalctl -k -b -o cat --no-pager 2>/dev/null)"
	echo "Zenbook Duo health summary - kernel $KREL - $(date -Is)" >"$SUM"

	grep -q "UX8407AA" /sys/class/dmi/id/product_name && pass "Model: $(cat /sys/class/dmi/id/product_name), BIOS $(cat /sys/class/dmi/id/bios_version)" ||
		warn "Unexpected model: $(cat /sys/class/dmi/id/product_name)"

	# Top touchscreen must be driven by i2c_hid_acpi (HID-over-I2C), never raydium_ts.
	drv="$(basename "$(readlink /sys/bus/i2c/devices/i2c-RAYD0001:00/driver 2>/dev/null)" 2>/dev/null)"
	case "$drv" in
	i2c_hid_acpi) pass "Top touchscreen RAYD0001 -> i2c_hid_acpi" ;;
	raydium_ts) fail "Top touchscreen RAYD0001 bound to raydium_ts (wrong protocol: touch/pen dead, may Oops)" ;;
	*) warn "Top touchscreen RAYD0001 driver: ${drv:-none}" ;;
	esac
	grep -q "raydium_i2c_irq" <<<"$k" && fail "raydium_i2c_ts Oops present in this boot (kernel tainted)"

	drv="$(basename "$(readlink /sys/bus/i2c/devices/i2c-RAYD0002:00/driver 2>/dev/null)" 2>/dev/null)"
	[[ $drv == i2c_hid_acpi ]] && pass "Bottom touchscreen RAYD0002 -> i2c_hid_acpi" || warn "Bottom touchscreen RAYD0002 driver: ${drv:-none}"

	# Keyboard: hid-asus gives backlight LED + ASUS hotkeys; hid-generic does not.
	if ls /sys/bus/hid/devices/ | grep -q "0003:0B05:1CD7"; then
		drv="$(for d in /sys/bus/hid/devices/0003:0B05:1CD7.*; do basename "$(readlink $d/driver)"; done | sort -u | tr '\n' ' ')"
		[[ $drv == *asus* ]] && pass "Keyboard 0b05:1cd7 drivers: $drv" || warn "Keyboard 0b05:1cd7 on [$drv] (no hid-asus: no backlight LED / ASUS Fn keys)"
	else
		warn "Keyboard 0b05:1cd7 not attached over USB (detached/Bluetooth?)"
	fi
	ls /sys/class/leds/ | grep -q "kbd_backlight" && pass "Keyboard backlight LED present" || warn "No kbd_backlight LED"

	# Sensors (ISH): accelerometer/ALS are required for rotation & auto brightness.
	if grep -q "ISH loader: firmware loaded" <<<"$k"; then
		pass "ISH firmware: $(grep -o 'ISH loader: load firmware: [^ ]*' <<<"$k" | tail -1 | sed 's/.*: //') ($(grep -o 'FW base version: [^ ]*' <<<"$k" | tail -1))"
	elif grep -q "ISH loader: cmd .* failed" <<<"$k"; then
		fail "ISH firmware rejected (no accelerometer/ALS/hinge): $(grep -o 'ISH loader: load firmware: [^ ]*' <<<"$k" | tail -1)"
	fi
	t="$(for d in /sys/bus/iio/devices/iio:device*; do cat $d/name 2>/dev/null; done | tr '\n' ' ')"
	[[ $t == *accel* ]] && pass "Accelerometer present ($t)" || fail "No accelerometer IIO device (iio: ${t:-none})"
	[[ $t == *als* ]] && pass "Ambient light sensor present" || warn "No ambient light sensor"

	# Audio
	if grep -q "sof_sdw.*probe with driver sof_sdw failed" <<<"$k"; then
		fail "sof_sdw machine driver failed to probe (no internal speakers/mic)"
	elif grep -q "sofsoundwire" /proc/asound/cards; then
		pass "SOF SoundWire card registered ($(grep -c Speaker <(aplay -l 2>/dev/null)) speaker PCM)"
	else
		fail "No SOF SoundWire sound card"
	fi
	grep -q "cs35l56.*Calibration applied" <<<"$k" && pass "CS35L56 amp tuning + calibration loaded" || warn "CS35L56 calibration not confirmed"

	# Display
	t="$(grep -c 'DSB 0 poll error' <<<"$k")"
	((t == 0)) && pass "No xe DSB poll errors" || warn "xe DSB poll errors: $t"
	grep -q -E "vblank wait timed out|Timed out waiting PSR idle|flip_done timed out" <<<"$k" && fail "xe vblank/PSR/flip timeouts present (risk of hang on suspend/modeset)"
	grep -q "plane .* fault" <<<"$k" && warn "xe plane faults present"
	# bpp of every active pipe (inactive pipes report bpp=0, e.g. while the screen is blanked)
	t="$(as_root awk '/^\[CRTC/{a=0} /uapi: enable=yes, active=yes/{a=1} a && /pipe src=/{match($0,/bpp=[0-9]+/); print substr($0,RSTART+4,RLENGTH-4)}' \
		/sys/kernel/debug/dri/0000:00:02.0/i915_display_info 2>/dev/null | tr '\n' ' ')"
	if ! as_root test -r /sys/kernel/debug/dri/0000:00:02.0/i915_display_info 2>/dev/null; then
		info "Colour depth check needs root (sudo ./duo doctor)"
	elif [[ -z ${t// /} ]]; then
		warn "No active display pipe right now (screens blanked), bpc check skipped"
	elif [[ $t == *18* || $t == *24* ]]; then
		warn "Active pipe bpp: $t(6/8 bpc + dithering; apply display-dsc-10bit for 10 bpc)"
	else
		pass "Active pipe bpp: $t"
	fi
	grep -q "not enough stolen space for compressed buffer" <<<"$k" && warn "FBC disabled (stolen memory too small)"
	[[ -n "$(journalctl -b -o cat 2>/dev/null | grep -m1 'plymouth-quit.service: start operation timed out')" ]] && fail "plymouth-quit timed out (DRM master deadlock -> black screen)"
	grep -q "asus_screenpad: Failed to read current brightness" <(journalctl -b -o cat 2>/dev/null) && warn "asus_screenpad backlight broken (bogus brightness value)"

	# Power
	mmio_pl1=$(($(cat /sys/class/powercap/intel-rapl-mmio:0/constraint_0_power_limit_uw 2>/dev/null || echo 0) / 1000000))
	((mmio_pl1 >= 28)) && pass "MMIO RAPL PL1=${mmio_pl1}W (>= Windows 'Standard' minimum 28W)" ||
		warn "MMIO RAPL PL1=${mmio_pl1}W (Windows DTT 'Standard' uses 28-42W; thermald --adaptive not active?)"
	systemctl is-active -q thermald && pass "thermald active" || warn "thermald inactive (DTT adaptive policies not applied)"
	t="$(cat /sys/class/power_supply/BAT0/charge_control_end_threshold 2>/dev/null)"
	[[ -n $t && $t -lt 100 ]] && pass "Battery charge limit ${t}%" || warn "Battery charges to ${t:-?}% (for longevity set a limit: System Settings > Power Management)"
	grep -q "asus_armoury: No matching power limits" <<<"$k" && warn "asus_armoury has no PPT table for this model"

	# Bluetooth pairing of the detachable keyboard
	bluetoothctl devices 2>/dev/null | grep -qi "zenbook duo\|asus.*keyboard" && pass "Duo keyboard paired over Bluetooth" ||
		warn "Duo keyboard not paired over Bluetooth (detached use will not work)"

	# Firmware load failures in general
	t="$(grep -E 'firmware: failed|Direct firmware load .* failed' <<<"$k" | head -3)"
	[[ -z $t ]] && pass "No firmware load failures" || fail "Firmware load failures: $t"
}

collect_secrets
if ((!SUMMARY_ONLY)); then
	echo ">> scanning into $OUT"
	scan_system
	scan_cpu
	scan_buses
	scan_input
	scan_display
	scan_power
	scan_audio_net_storage
	scan_logs
	((WITH_ACPI)) && scan_acpi
fi
echo ">> health summary"
health_summary
for f in "$OUT"/*.txt; do redact_file "$f"; done
echo ">> done: $OUT"
