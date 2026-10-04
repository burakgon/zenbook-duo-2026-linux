# shellcheck shell=bash
pl() { echo $(($(cat /sys/class/powercap/intel-rapl-mmio:0/constraint_$1_power_limit_uw) / 1000000)); }
profile="$(cat /sys/firmware/acpi/platform_profile)"
odvp0="$(cat /sys/bus/platform/devices/INTC10D4:00/odvp0 2>/dev/null)"
if ! systemctl is-active -q thermald; then
	warn "thermald not running: limits stay at BIOS boot defaults (PL1 $(pl 0) W, PL2 $(pl 1) W)"
	return 1
fi
ok "thermald adaptive active: profile=$profile odvp0=$odvp0 PL1=$(pl 0)W PL2=$(pl 1)W TCC=$(cat /sys/bus/pci/devices/0000:00:04.0/tcc_offset_degree_celsius)"
return 0
