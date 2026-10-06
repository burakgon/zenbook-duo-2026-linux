#!/bin/bash
# build.sh KERNELVER KERNEL_SOURCE_DIR
# Build xe.ko for KERNELVER from that kernel's own sources plus patches/.
#
# The headers package has no driver sources, so fetch drivers/gpu/drm/{xe,i915}
# from the tree the kernel was built from (sparse, blob-filtered clone; cached
# under /var/cache/zenbook-duo/xe-src):
#   *-cachyos*  github.com/CachyOS/linux     tag cachyos-<ver>-<n> (newest n)
#   *-archN-*   github.com/archlinux/linux   tag v<ver>-archN
#   otherwise   kernel.org stable            tag v<ver>
set -euo pipefail
kver="$1" kdir="$2"
here="$(cd "$(dirname "$0")" && pwd)"
cache=/var/cache/zenbook-duo/xe-src
export GIT_TERMINAL_PROMPT=0
# never hang a kernel update on a slow or dead network
git_net() { timeout "$1" git -c http.lowSpeedLimit=1000 -c http.lowSpeedTime=30 "${@:2}"; }

[[ $kver =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)(-rc[0-9]+)? ]] || { echo "unknown kernel version $kver" >&2; exit 1; }
up="${BASH_REMATCH[1]}.${BASH_REMATCH[2]}"
[[ ${BASH_REMATCH[3]} != 0 ]] && up+=".${BASH_REMATCH[3]}"
up+="${BASH_REMATCH[4]}"

case "$kver" in
*cachyos*)
	repo=https://github.com/CachyOS/linux.git
	tag="$(git_net 60 ls-remote --tags --refs "$repo" "cachyos-$up-*" 2>/dev/null | sed 's|.*refs/tags/||' | sort -V | tail -n1 || true)"
	# offline: the newest source tree of this version already in the cache
	[[ -n $tag ]] || tag="$(ls -1 "$cache" 2>/dev/null | grep -E "^cachyos-${up//./\\.}-[0-9]+$" | sort -V | tail -n1 || true)"
	;;
*-arch[0-9]*)
	repo=https://github.com/archlinux/linux.git
	[[ $kver =~ -(arch[0-9]+) ]]
	tag="v$up-${BASH_REMATCH[1]}"
	;;
*)
	repo=https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
	tag="v$up"
	;;
esac
[[ -n $tag ]] || { echo "no source tag found for $kver in $repo" >&2; exit 1; }
echo "xe sources: $repo $tag"

rm -rf src
if [[ -d $cache/$tag/drivers/gpu/drm/xe ]]; then
	cp -a "$cache/$tag" src
else
	git_net 600 -c advice.detachedHead=false clone -q --depth 1 --filter=blob:none --no-checkout --branch "$tag" "$repo" src
	git -C src sparse-checkout set --no-cone /drivers/gpu/drm/xe/ /drivers/gpu/drm/i915/
	git_net 600 -C src checkout -q
	rm -rf src/.git
	mkdir -p "$cache" && rm -rf "${cache:?}/$tag" && cp -a src "$cache/$tag"
	# keep the three most recent source trees
	ls -1dt "$cache"/*/ 2>/dev/null | tail -n +4 | xargs -r rm -rf
fi

for p in "$here"/patches/*.patch; do
	patch -d src -p1 --forward --quiet <"$p"
done

# Out-of-tree build: xe compiles the display code from ../i915/display, and the
# trace headers point TRACE_INCLUDE_PATH at the in-tree location.
cd src/drivers/gpu/drm
sed -i 's|\$(srctree)/drivers/gpu/drm/i915/|$(src)/../i915/|g' xe/Makefile
sed -i 's|^#define TRACE_INCLUDE_PATH \.\./\.\./drivers/gpu/drm/.*|#define TRACE_INCLUDE_PATH .|' \
	xe/xe_trace*.h i915/display/intel_display_trace.h

llvm=()
grep -q '^CONFIG_CC_IS_CLANG=y' "$kdir/.config" && llvm=(LLVM=1)
make -C "$kdir" M="$PWD/xe" "${llvm[@]}" -j"$(nproc)" modules
