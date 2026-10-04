# sensors-accel-mount

Makes the accelerometer report orientation that matches how the panels are mounted, so auto-rotation is not upside down.

## The problem
- With auto-rotation, the picture turns upside down when the laptop is upright.
- The top panel is mounted 180 degrees rotated relative to the sensor hub's accelerometer, and KWin does not use the DRM panel orientation property.

## What it changes
- Installs `/etc/udev/hwdb.d/61-zenbook-duo-sensor.hwdb`, which sets `ACCEL_MOUNT_MATRIX=-1, 0, 0; 0, -1, 0; 0, 0, 1` for the UX8407AA accelerometer.
- Runs `systemd-hwdb update`, re-triggers the `accel_3d` device and restarts `iio-sensor-proxy`.
- No reboot is needed.

## Check
```sh
./duo status sensors-accel-mount
for d in /sys/bus/iio/devices/iio:device*; do udevadm info -q property "$d" | grep ACCEL_MOUNT_MATRIX; done
```

## Undo
`sudo ./duo revert sensors-accel-mount`

## Notes
- Works on all kernels. Needs `sensors-ish-firmware` first; without it there is no accelerometer.
- Upstream: a candidate for systemd's `60-sensor.hwdb`.
- On KDE, `desktop-kde-duo` (duo-rotate) uses this orientation to rotate both panels correctly.
