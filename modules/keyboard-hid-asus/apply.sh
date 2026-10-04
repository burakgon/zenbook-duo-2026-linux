# shellcheck shell=bash
# hid-asus with: Duo IDs bound to the generic HID group only (touchpad stays on
# hid-multitouch), feature reports clamped to the device's report length (stock
# hid-asus sends 64 bytes, the 16 byte report 0x5a then times out with -110), the
# 0x5a hotkey descriptor turned into an array, and the missing Duo key codes.
duo_dkms_install "$MOD_DIR/dkms" zenbook-duo-hid-asus 1.0

# switch the running kernel over: reload hid-asus, rebind the ASUS control interface
if modinfo -n hid_asus 2>/dev/null | grep -q updates/dkms; then
	modprobe -r hid_asus 2>/dev/null || true
	modprobe hid_asus || true
	for d in /sys/bus/hid/devices/0003:0B05:1CD7.* /sys/bus/hid/devices/0005:0B05:1CD8.*; do
		[[ -e $d ]] || continue
		od -An -tx1 -v "$d/report_descriptor" | tr -d '\n' | grep -q '06 31 ff 09 76' || continue
		drv="$(basename "$(readlink "$d/driver" 2>/dev/null)" 2>/dev/null)"
		[[ $drv == asus ]] && continue
		[[ -n $drv ]] && echo "${d##*/}" >"/sys/bus/hid/drivers/$drv/unbind"
		echo "${d##*/}" >/sys/bus/hid/drivers/asus/bind || true
	done
fi
