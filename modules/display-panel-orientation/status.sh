# shellcheck shell=bash
if grep -q "panel_orientation=upside_down" /proc/cmdline; then
	ok "panel orientation declared on the kernel cmdline"
	return 0
fi
warn "panels not declared upside down (KDE rotation hack + auto-rotate will fight)"
return 1
