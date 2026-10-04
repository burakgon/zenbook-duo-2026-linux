# shellcheck shell=bash
ps="$(iw dev wlan0 get power_save 2>/dev/null | awk '{print $3}')"
ac="$(cat /sys/class/power_supply/AC0/online 2>/dev/null)"
if { [[ $ac == 1 && $ps == off ]] || [[ $ac == 0 && $ps == on ]]; }; then ok "Wi-Fi power save $ps (AC=$ac)"; return 0; fi
warn "Wi-Fi power save $ps while AC=$ac"
return 1
