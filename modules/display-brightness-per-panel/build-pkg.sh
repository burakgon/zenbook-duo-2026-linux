#!/usr/bin/env bash
# build-pkg.sh PKG PATCH OUTDIR - rebuild an installed Arch/CachyOS package with one extra patch.
#
# Uses the Arch packaging repo at the tag of the installed upstream version and keeps
# the installed pkgrel, so the next repository update of the package (a higher
# pkgver or pkgrel) replaces the patched build cleanly instead of being shadowed by it.
# Runs as a normal user (makepkg refuses root); build dependencies must be installed.
set -euo pipefail

pkg="$1" patch="$(readlink -f "$2")" out="$3"
cache="${XDG_CACHE_HOME:-$HOME/.cache}/zenbook-duo-linux/pkgbuild"

read -r _ installed < <(pacman -Q "$pkg")
pkgver="${installed%-*}" pkgrel="${installed##*-}"

mkdir -p "$cache"
if [[ -d $cache/$pkg/.git ]]; then
	git -C "$cache/$pkg" fetch -q --tags origin
else
	git clone -q "https://gitlab.archlinux.org/archlinux/packaging/packages/$pkg.git" "$cache/$pkg"
fi
tag="$(git -C "$cache/$pkg" tag --list "$pkgver-*" --sort=-v:refname | head -n1)"
[[ -n $tag ]] || { echo "no Arch packaging tag for $pkg $pkgver" >&2; exit 1; }

work="$(mktemp -d "${TMPDIR:-/tmp}/duo-$pkg.XXXXXX")"
trap 'rm -rf "$work"' EXIT
git -C "$cache/$pkg" archive "$tag" | tar -x -C "$work"
cp "$patch" "$work/zenbook-duo.patch"

# add the patch: a source entry, its checksum and a prepare() step
sum="$(sha256sum "$patch" | cut -d' ' -f1)"
{
	printf '\n# zenbook-duo-linux: %s\n' "$(basename "$patch")"
	printf 'source+=(zenbook-duo.patch)\nsha256sums+=(%s)\n' "$sum"
	printf 'pkgrel=%s\n' "$pkgrel"
	printf 'eval "_duo_orig_$(declare -f prepare 2>/dev/null || echo "prepare() { :; }")"\n'
	printf 'prepare() { _duo_orig_prepare; patch -d "$pkgname-$pkgver" -Np1 -i "$srcdir/zenbook-duo.patch"; }\n'
} >>"$work/PKGBUILD"

# The tarball checksum comes from Arch's packaging repo; its signing keys are not
# in the user's keyring, so skip only the detached-signature check.
(cd "$work" && PACKAGER="zenbook-duo-linux" makepkg -f --noconfirm --skippgpcheck)
mkdir -p "$out"
cp "$work"/"$pkg"-"$pkgver"-"$pkgrel"-*.pkg.tar.zst "$out"/
echo "built $pkg $pkgver-$pkgrel (Arch $tag + $(basename "$patch"))"
