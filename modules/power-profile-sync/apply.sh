# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/zenbook-duo-profile-sync" /usr/lib/zenbook-duo/zenbook-duo-profile-sync 0755
duo_install_file "$MOD_DIR/files/zenbook-duo-profile-sync.service" /etc/systemd/system/zenbook-duo-profile-sync.service
# The drop-in replaces the packaged command line; refuse to override someone else's ExecStart.
for d in /etc/systemd/system/power-profiles-daemon.service.d/*.conf /run/systemd/system/power-profiles-daemon.service.d/*.conf; do
	[[ -e $d && $d != */50-zenbook-duo-block-platform-profile.conf ]] || continue
	grep -q '^ExecStart=' "$d" && die "$d already sets ExecStart; add --block-driver=platform_profile there instead"
done
duo_install_file "$MOD_DIR/files/50-zenbook-duo-block-platform-profile.conf" \
	/etc/systemd/system/power-profiles-daemon.service.d/50-zenbook-duo-block-platform-profile.conf
systemctl daemon-reload
# PPD does not restore its saved profile when its drivers change: put the current one back
prof="$(powerprofilesctl get 2>/dev/null || echo balanced)"
systemctl restart power-profiles-daemon.service
sleep 1
powerprofilesctl set "$prof" 2>/dev/null || true
duo_enable_unit zenbook-duo-profile-sync.service --now
systemctl restart zenbook-duo-profile-sync.service
