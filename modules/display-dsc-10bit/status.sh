# shellcheck shell=bash
i=/sys/kernel/debug/dri/0/i915_display_info
if [[ ! -r $i ]]; then
	systemctl is-active -q zenbook-duo-dsc-10bit.service && { ok "service active (run as root for details)"; return 0; }
	warn "service not active: panels run at 6 bpc + dithering"; return 1
fi
bpp="$(grep -m1 -o 'pipe src=2880x1800.*bpp=[0-9]*' "$i" | grep -o 'bpp=[0-9]*')"
if [[ $bpp == bpp=30 ]]; then ok "eDP-1 at 10 bpc (DSC)"; return 0; fi
warn "eDP-1 $bpp: 6 bpc + dithering"; return 1
