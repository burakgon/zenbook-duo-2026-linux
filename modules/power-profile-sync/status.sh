# shellcheck shell=bash
systemctl is-active -q zenbook-duo-profile-sync || { warn "profile sync not running (power-saver stays at balanced firmware limits)"; return 1; }
if powerprofilesctl list 2>/dev/null | grep -q 'PlatformDriver:.*platform_profile'; then
	warn "power-profiles-daemon still drives platform_profile: performance -> power-saver snaps back to balanced"; return 1
fi
ok "profile sync running (ppd=$(powerprofilesctl get), asus=$(cat /sys/class/platform-profile/platform-profile-0/profile), gpu=$(grep -o '\[[a-z_]*\]' /sys/class/drm/card0/device/tile0/gt0/freq0/power_profile))"
return 0
