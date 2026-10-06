# shellcheck shell=bash
# 0 = patched xe running, 1 = not running or failing, 2 = not applicable.

param=/sys/module/xe/parameters/zenbook_duo_edp2_tcss
if [[ ! -e $param ]]; then
	if dkms status zenbook-duo-xe 2>/dev/null | grep -q "$(uname -r).*installed"; then
		info "patched xe built for $(uname -r); reboot pending"
	else
		warn "patched xe not built for $(uname -r) (see: dkms status zenbook-duo-xe)"
	fi
	return 1
fi
if [[ $(<"$param") != Y ]]; then
	warn "patched xe loaded but turned off (xe.zenbook_duo_edp2_tcss=0)"
	return 1
fi
if klog | grep -qE 'PHY B failed|DDI BUF B|pipe B\] flip_done timed out|TCSS power request not acknowledged'; then
	warn "patched xe loaded, but the bottom panel failed in this boot (see journalctl -k -b)"
	return 1
fi
ok "patched xe loaded: eDP-2 gets TCSS power, bottom screen safe after a docked power-on"
return 0
