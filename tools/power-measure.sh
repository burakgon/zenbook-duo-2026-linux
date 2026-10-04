#!/usr/bin/env bash
# power-measure.sh - real system power from the battery (run unplugged, as root).
# Prints battery discharge power, package power and S0ix/PC10 residency for N seconds,
# optionally with the screens blanked.  Usage: sudo tools/power-measure.sh [seconds] [--screen-off]
set -euo pipefail
secs="${1:-30}"
[[ "$(cat /sys/class/power_supply/AC0/online)" == 0 ]] || { echo "unplug the charger first" >&2; exit 1; }
bat=/sys/class/power_supply/BAT0
e0=$(cat $bat/energy_now)
s0=$(cat /sys/kernel/debug/pmc_core/slp_s0_residency_usec)
ts="$(turbostat --quiet --Summary --show PkgWatt,Pk%pc10,Busy% --interval "$secs" --num_iterations 1 2>/dev/null | tail -1)"
e1=$(cat $bat/energy_now)
s1=$(cat /sys/kernel/debug/pmc_core/slp_s0_residency_usec)
echo "battery power_now: $(awk '{printf "%.2f W", $1/1e6}' $bat/power_now)"
echo "battery avg over ${secs}s: $(awk -v a="$e0" -v b="$e1" -v s="$secs" 'BEGIN{printf "%.2f W", (a-b)/1e6*3600/s}') (energy_now resolution is coarse; use >=60s)"
echo "turbostat (Busy% Pk%pc10 PkgWatt): $ts"
echo "S0ix (slp_s0) residency: $(( (s1-s0)/10000/secs ))%"
