# shellcheck shell=bash
rc=0
if [[ -x /usr/lib/zenbook-duo/duo-rotate ]] && systemctl --global is-enabled -q zenbook-duo-rotate.service 2>/dev/null; then
	ok "duo-rotate installed and enabled"
else
	warn "duo-rotate not installed: panels rotate together and touch breaks after rotation"; rc=1
fi
if systemctl --global is-enabled -q zenbook-duo-kwin-output-prefs.service 2>/dev/null; then
	ok "bottom panel follows the hardware brightness"
else
	warn "bottom panel has a separate software-dimming slider"; rc=1
fi
return $rc
