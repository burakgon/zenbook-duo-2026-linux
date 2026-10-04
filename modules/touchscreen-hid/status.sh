# shellcheck shell=bash
# Exit status: 0 = healthy, 1 = needs fix.

drv="$(basename "$(readlink /sys/bus/i2c/devices/i2c-RAYD0001:00/driver 2>/dev/null)" 2>/dev/null)"
inputs="$(grep -c 'RAYD0001' /proc/bus/input/devices)"
case "$drv" in
i2c_hid_acpi)
	ok "RAYD0001 bound to i2c_hid_acpi (${inputs} input nodes)"
	return 0
	;;
raydium_ts)
	warn "RAYD0001 bound to raydium_ts (wrong protocol, touch/pen unusable)"
	[[ -f /etc/modprobe.d/zenbook-duo-touchscreen.conf ]] && info "fix installed, reboot pending"
	return 1
	;;
*)
	warn "RAYD0001 driver: ${drv:-none}"
	return 1
	;;
esac
