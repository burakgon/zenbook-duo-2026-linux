# shellcheck shell=bash
for d in /sys/bus/iio/devices/iio:device*; do
	[[ "$(cat "$d/name" 2>/dev/null)" == accel_3d ]] || continue
	m="$(udevadm info -q property "$d" | sed -n 's/^ACCEL_MOUNT_MATRIX=//p')"
	if [[ $m == "-1, 0, 0; 0, -1, 0; 0, 0, 1" ]]; then
		ok "accelerometer mount matrix: $m"
		return 0
	fi
	warn "accelerometer mount matrix missing (auto-rotate shows the picture upside down)"
	return 1
done
info "no accelerometer (ISH firmware missing?)"
return 1
