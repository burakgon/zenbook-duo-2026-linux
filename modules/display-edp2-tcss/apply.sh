# shellcheck shell=bash
# Rebuild xe with dkms/patches for every installed 7.x kernel. build.sh fetches
# the kernel's own xe/i915 sources (sparse clone), so the module matches the
# running kernel exactly apart from the patch. xe lives in the initramfs.

pkgs=(git patch pahole)
grep -q '^CONFIG_CC_IS_CLANG=y' "/usr/lib/modules/$(uname -r)/build/.config" 2>/dev/null && pkgs+=(clang llvm lld)
duo_pkg_install "${pkgs[@]}"
duo_dkms_install "$MOD_DIR/dkms" zenbook-duo-xe 1.0
duo_install_file "$MOD_DIR/files/zenbook-duo-xe.conf" /etc/mkinitcpio.conf.d/zenbook-duo-xe.conf
duo_need_initramfs
