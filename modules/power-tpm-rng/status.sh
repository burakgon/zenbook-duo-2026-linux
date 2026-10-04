# shellcheck shell=bash
cur="$(cat /sys/class/misc/hw_random/rng_current 2>/dev/null)"
[[ $cur == none ]] && { ok "hwrng idle (rng_current=none)"; return 0; }
warn "hwrng polling $cur"; return 1
