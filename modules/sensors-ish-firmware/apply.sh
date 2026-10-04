# shellcheck shell=bash
# The ISH on Panther Lake only boots firmware signed for the OEM. linux-firmware's
# generic intel/ish/ish_ptl.bin is rejected ("ISH loader: cmd 2 failed 10"), so
# take ASUS's own image from the official Windows "Intel Integrated Sensor Solution"
# driver package for the UX8407AA and install it under the name the kernel looks up.

PKG_URL="https://dlcdnets.asus.com/pub/ASUS/nb/Image/Driver/Chipset/48536/SensorHub_DCH_Intel_Z_V5.8.62.0_48536.exe?model=UX8407AA"
PKG_SHA256="735a2915b421e0d35975211e0dee94bffc89c33bc688ab0567e09ee407f6e575"
FW_MEMBER="IshHeciExtensionTemplate/x64/FWImage/0004/AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin"
FW_SHA256="e031f54f5a4fbdc51dc9beb3937f52fdc5d2ba00f005313cf73a8cfe0f9b2060"

# Same CRC-32 the kernel uses (crc32(~0, s, len) ^ ~0), via gzip's trailer.
crc32_hex() { printf '%s' "$1" | gzip -c | tail -c8 | head -c4 | od -An -tx4 | tr -d ' \n'; }

# drivers/hid/intel-ish-hid/ishtp/loader.c tries ish_<gen>_<vendor>_<name>.bin
fw_name="ish_ptl_$(crc32_hex "$(dmi sys_vendor)")_$(crc32_hex "$(dmi product_name)").bin"
dest="/usr/lib/firmware/updates/intel/ish/$fw_name"

cache="$DUO_STATE_DIR/cache"
pkg="$cache/SensorHub_DCH_Intel_Z_V5.8.62.0_48536.exe"
mkdir -p "$cache"

if [[ ! -f $pkg ]] || ! sha256sum -c --status <<<"$PKG_SHA256  $pkg"; then
	info "downloading ASUS Sensor Hub driver package (5 MB)"
	curl -fL --retry 3 -o "$pkg.part" "$PKG_URL" || die "download failed: $PKG_URL"
	mv "$pkg.part" "$pkg"
fi
sha256sum -c --status <<<"$PKG_SHA256  $pkg" || die "package checksum mismatch, refusing to use it"

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
# The .exe is a PE stub with a 7z archive appended; carve it out and extract one member.
offset="$(LC_ALL=C grep -obUaP '7z\xbc\xaf\x27\x1c' "$pkg" | head -1 | cut -d: -f1)"
[[ -n $offset ]] || die "no 7z payload found in package"
tail -c +$((offset + 1)) "$pkg" >"$work/pkg.7z"
bsdtar -xf "$work/pkg.7z" -C "$work" "$FW_MEMBER" || die "extraction failed"
sha256sum -c --status <<<"$FW_SHA256  $work/$FW_MEMBER" || die "firmware checksum mismatch"

duo_install_file "$work/$FW_MEMBER" "$dest" 0644

# Try to bring the ISH up right away; a cold boot is needed if the ISH already
# exhausted its load retries in this boot.
if lsmod | grep -q '^intel_ish_ipc'; then
	info "reloading intel_ish_ipc"
	modprobe -r intel_ish_ipc 2>/dev/null && modprobe intel_ish_ipc 2>/dev/null || duo_note_reboot
fi
