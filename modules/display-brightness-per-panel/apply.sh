# shellcheck shell=bash
# Per-panel hardware brightness. The xe driver gives each OLED panel its own backlight
# (intel_backlight on eDP-1, card0-eDP-2-backlight on eDP-2). Stock PowerDevil folds them
# into one "Built-in Screen" and KWin binds that to the first built-in output, so the
# bottom panel only gets software dimming on top of the shared hardware level.
#   patches/powerdevil.patch: one brightness device per panel, carrying the panel's EDID
#   patches/kwin.patch:       built-in outputs are matched to those devices by EDID
# Both packages are rebuilt from the Arch PKGBUILD of the installed version.
user="${SUDO_USER:-}"
[[ -n $user && $user != root ]] || die "run with sudo from the desktop user's shell (makepkg cannot run as root)"

out=/var/cache/zenbook-duo/packages
install -d -m 0755 -o "$user" "$out"

pkgs=()
need_build=()
for p in powerdevil kwin; do
	f="$(ls "$out/$p-$(pacman -Q "$p" | cut -d' ' -f2)"-*.pkg.tar.zst 2>/dev/null | head -n1)"
	if [[ -n $f ]]; then
		pkgs+=("$f")
	else
		need_build+=("$p")
	fi
done

if ((${#need_build[@]})); then
	builddeps=(cmake extra-cmake-modules kdoctools krunner plasma-wayland-protocols python vulkan-headers wayland-protocols xorg-xwayland)
	added=()
	for p in "${builddeps[@]}"; do pacman -Qq "$p" >/dev/null 2>&1 || added+=("$p"); done
	((${#added[@]} == 0)) || pacman -S --needed --noconfirm --asdeps "${added[@]}" || die "could not install build dependencies"
	rc=0
	for p in "${need_build[@]}"; do
		info "building patched $p (kwin takes a while)"
		sudo -u "$user" "$MOD_DIR/build-pkg.sh" "$p" "$MOD_DIR/patches/$p.patch" "$out" >"$out/build-$p.log" 2>&1 || { rc=1; break; }
		pkgs+=("$(ls "$out/$p-$(pacman -Q "$p" | cut -d' ' -f2)"-*.pkg.tar.zst | head -n1)")
	done
	((${#added[@]} == 0)) || pacman -Rns --noconfirm "${added[@]}" >/dev/null || warn "could not remove build dependencies: ${added[*]}"
	((rc == 0)) || die "build failed, see $out/build-$p.log"
fi

duo_pkg_patched_install "${pkgs[@]}"
duo_install_file "$MOD_DIR/files/zenbook-duo-plasma-patch-check" /usr/lib/zenbook-duo/plasma-patch-check 0755
duo_install_file "$MOD_DIR/files/zenbook-duo-plasma-patches.hook" /etc/pacman.d/hooks/zenbook-duo-plasma-patches.hook
# KWin and PowerDevil pick it up on the next login
duo_note_reboot
