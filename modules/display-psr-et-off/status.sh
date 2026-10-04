# shellcheck shell=bash
s=/sys/kernel/debug/dri/0/eDP-1/i915_psr_status
if [[ ! -r $s ]]; then
	systemctl is-active -q zenbook-duo-psr-et-off.service && { ok "service active (run as root for PSR details)"; return 0; }
	warn "service not active"; return 1
fi
mode="$(grep -m1 "PSR mode" "$s")"
if [[ $mode == *"Early Transport"* ]]; then
	warn "$mode: ghost cursors on the top panel"; return 1
fi
ok "$mode"; return 0
