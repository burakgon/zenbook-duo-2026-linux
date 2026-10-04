# shellcheck shell=bash
n=0
for id in e476 e462 e45d e470 b01d b07d e47f e402 e423 b001; do
	for d in /sys/bus/pci/devices/*; do
		[[ "$(cat "$d/device")" == "0x$id" ]] || continue
		[[ "$(cat "$d/power/control")" == on ]] && { warn "${d##*/} still runtime PM 'on'"; n=$((n + 1)); }
	done
done
((n == 0)) && { ok "platform PCI functions on runtime PM auto"; return 0; }
return 1
