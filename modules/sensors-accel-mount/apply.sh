# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/61-zenbook-duo-sensor.hwdb" /etc/udev/hwdb.d/61-zenbook-duo-sensor.hwdb
systemd-hwdb update
for d in /sys/bus/iio/devices/iio:device*; do
	[[ "$(cat "$d/name" 2>/dev/null)" == accel_3d ]] && udevadm trigger --action=change "$d"
done
udevadm settle
systemctl restart iio-sensor-proxy 2>/dev/null || true
