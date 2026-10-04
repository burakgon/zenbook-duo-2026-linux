# shellcheck shell=bash
if [[ "$(cat /sys/module/xe/parameters/enable_dpcd_backlight 2>/dev/null)" == 1 ]]; then
	ok "xe DPCD backlight enabled (intel_backlight max $(cat /sys/class/backlight/intel_backlight/max_brightness))"
	return 0
fi
grep -q "xe.enable_dpcd_backlight=1" /proc/cmdline || { warn "PWM backlight in use: brightness changes do not reach the OLED panels"; return 1; }
return 0
