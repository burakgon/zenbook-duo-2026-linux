# shellcheck shell=bash
rc=0
if [[ -f /usr/lib/qt6/qml/org/zenbookduo/power/libzenbookduopowerplugin.so && -f /usr/share/plasma/plasmoids/org.zenbookduo.power/metadata.json ]]; then
	ok "widget installed (add \"Zenbook Duo Power\" to a panel)"
else
	warn "widget not installed"; rc=1
fi
if [[ -r /sys/class/powercap/intel-rapl:0/energy_uj ]]; then
	ok "processor energy counters readable: breakdown available"
else
	warn "processor energy counters not readable for $(id -un): no breakdown (needs the wheel group and the udev rule)"; rc=1
fi
return $rc
