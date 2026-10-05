# shellcheck shell=bash
# common.sh - shared helpers for the zenbook-duo-2026-linux patch system.

DUO_STATE_DIR="${DUO_STATE_DIR:-/var/lib/zenbook-duo}"
DUO_PREFIX="zenbook-duo"

if [[ -t 1 ]]; then
	C_RESET=$'\e[0m' C_BOLD=$'\e[1m' C_DIM=$'\e[2m'
	C_RED=$'\e[31m' C_GREEN=$'\e[32m' C_YELLOW=$'\e[33m' C_BLUE=$'\e[34m' C_CYAN=$'\e[36m'
else
	C_RESET='' C_BOLD='' C_DIM='' C_RED='' C_GREEN='' C_YELLOW='' C_BLUE='' C_CYAN=''
fi

log() { printf '%s==>%s %s\n' "$C_BLUE$C_BOLD" "$C_RESET" "$*"; }
info() { printf '  %s->%s %s\n' "$C_CYAN" "$C_RESET" "$*"; }
ok() { printf '  %s✓%s %s\n' "$C_GREEN" "$C_RESET" "$*"; }
warn() { printf '  %s!%s %s\n' "$C_YELLOW" "$C_RESET" "$*" >&2; }
err() { printf '%serror:%s %s\n' "$C_RED$C_BOLD" "$C_RESET" "$*" >&2; }
die() {
	err "$*"
	exit 1
}

have() { command -v "$1" >/dev/null 2>&1; }

# Kernel log of the current boot; dmesg is root-only (dmesg_restrict=1), the journal is not.
klog() {
	if ((EUID == 0)); then
		dmesg 2>/dev/null
	else
		journalctl -k -b --no-pager -o cat 2>/dev/null
	fi
}

require_root() {
	((EUID == 0)) || die "this command must run as root (try: sudo $0 $*)"
}

# Kernel version helpers ------------------------------------------------------

# Strip the local suffix: 7.3.0-rc5-1-cachyos-rc -> 7.3.0-rc5, 7.2.9-1-cachyos -> 7.2.9
kver_base() {
	local v="${1:-$(uname -r)}"
	v="${v%%-[0-9]*-*}"
	sed -E 's/^([0-9]+\.[0-9]+(\.[0-9]+)?(-rc[0-9]+)?).*/\1/' <<<"$v"
}

# "7.3-rc5" -> "7.3.0~rc5", "7.3" -> "7.3.0"; '~' makes rc sort before the release.
_kver_norm() {
	local v rc=""
	v="$(kver_base "$1")"
	if [[ $v == *-rc* ]]; then
		rc="~rc${v##*-rc}"
		v="${v%-rc*}"
	fi
	[[ $v =~ ^[0-9]+\.[0-9]+$ ]] && v="$v.0"
	printf '%s%s' "$v" "$rc"
}

# Compare two kernel versions; rc releases sort before the final release.
# kver_cmp A B -> prints -1, 0 or 1
kver_cmp() {
	local a b
	a="$(_kver_norm "$1")"
	b="$(_kver_norm "$2")"
	if [[ $a == "$b" ]]; then
		echo 0
	elif [[ "$(printf '%s\n%s\n' "$a" "$b" | sort -V | head -1)" == "$a" ]]; then
		echo -1
	else
		echo 1
	fi
}

kver_ge() { [[ "$(kver_cmp "$1" "$2")" != -1 ]]; }
kver_lt() { [[ "$(kver_cmp "$1" "$2")" == -1 ]]; }

# Installed kernels (module directories that have a build tree or vmlinuz).
installed_kernels() {
	local d
	for d in /usr/lib/modules/*; do
		[[ -e $d/vmlinuz || -e $d/build ]] && basename "$d"
	done
}

# Hardware identification ------------------------------------------------------

dmi() { cat "/sys/class/dmi/id/$1" 2>/dev/null; }

is_supported_machine() {
	[[ "$(dmi sys_vendor)" == "ASUS"* && "$(dmi board_name)" == UX8407* ]]
}

# Module metadata ---------------------------------------------------------------

# Load module.conf of a module directory into MOD_* variables.
module_load() {
	local dir="$1"
	MOD_DIR="$dir"
	ID="" NAME="" CATEGORY="" SEVERITY="" RISK="" REBOOT="" KERNEL_MIN="" KERNEL_MAX=""
	DEFAULT="" UPSTREAM="" DMI_BOARD="UX8407AA" REQUIRES="" CONFLICTS="" SUMMARY=""
	# shellcheck disable=SC1091
	source "$dir/module.conf"
	MOD_ID="${ID:-$(basename "$dir")}"
}

# Is the module relevant for a given kernel release?
module_applies_to_kernel() {
	local krel="$1"
	[[ -n $KERNEL_MIN ]] && ! kver_ge "$krel" "$KERNEL_MIN" && return 1
	[[ -n $KERNEL_MAX ]] && ! kver_lt "$krel" "$KERNEL_MAX" && return 1
	return 0
}
