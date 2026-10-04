# shellcheck shell=bash
if ! modinfo -n hid_asus 2>/dev/null | grep -q updates/dkms; then
	warn "stock hid-asus in use (backlight writes time out, no Fn keys)"
	return 1
fi
if klog | grep -q "Asus failed to set keyboard backlight"; then
	warn "backlight write errors in this boot (reboot after install if they predate it)"
fi
[[ -e /sys/class/leds/asus::kbd_backlight ]] && ok "patched hid-asus active, kbd backlight $(cat /sys/class/leds/asus::kbd_backlight/brightness)/3" && return 0
ls /sys/bus/hid/devices/ | grep -q -E "0B05:1CD[78]" || { info "keyboard not attached"; return 0; }
return 1
