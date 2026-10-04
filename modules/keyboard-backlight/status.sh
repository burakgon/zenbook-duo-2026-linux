# shellcheck shell=bash
if [[ -e /sys/class/leds/asus::kbd_backlight ]]; then
	ok "asus::kbd_backlight present (level $(cat /sys/class/leds/asus::kbd_backlight/brightness)/$(cat /sys/class/leds/asus::kbd_backlight/max_brightness))"
	return 0
fi
ls /sys/bus/hid/devices/ | grep -q -E "0B05:1CD[78]" || { info "keyboard not attached"; return 0; }
warn "keyboard attached but no asus::kbd_backlight LED"
return 1
