# shellcheck shell=bash
rc=0
[[ -x /usr/lib/zenbook-duo/duo-health && -f /etc/pacman.d/hooks/95-zenbook-duo-kernel-check.hook ]] &&
	ok "kernel update check installed" || { warn "no check after kernel updates"; rc=1; }
systemctl --global is-enabled -q zenbook-duo-health.service 2>/dev/null &&
	ok "login health check enabled" || { warn "no health check at login"; rc=1; }
return $rc
