# sensors-ish-firmware

Turns on the accelerometer, ambient light sensor and hinge sensor, which enable auto-rotation and auto-brightness.

## The problem
- There are no sensors at all: no auto-rotation and no auto-brightness.
- The Intel Integrated Sensor Hub (ISH, `8086:e445`) on Panther Lake only boots firmware signed for the laptop maker. The generic `ish_ptl.bin` in linux-firmware is rejected (`ISH loader: cmd 2 failed 10`), and ASUS's image is not in linux-firmware.

## What it changes
- Downloads ASUS's official Windows driver package for the UX8407AA (`SensorHub_DCH_Intel_Z_V5.8.62.0_48536.exe`, about 5 MB, from `dlcdnets.asus.com`) and caches it in `/var/lib/zenbook-duo/cache`.
- Verifies the package's SHA-256, extracts `AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin` from it, and verifies that file's SHA-256 too. It refuses to continue on any mismatch.
- Installs the firmware as `/usr/lib/firmware/updates/intel/ish/ish_ptl_<vendor-crc>_<product-crc>.bin`, the name the kernel looks for (on the UX8407AA: `ish_ptl_59b8d9f2_c68ec386.bin`).
- Reloads `intel_ish_ipc` so the sensors usually come up immediately. If the ISH already gave up loading in this boot, a reboot (cold boot) is needed.

## Check
```sh
./duo status sensors-ish-firmware
cat /sys/bus/iio/devices/iio:device*/name   # should include accel_3d, als and hinge
```

## Undo
`sudo ./duo revert sensors-ish-firmware`, then reboot.

## Notes
- Works on all kernels. Needs `curl` and `bsdtar` for the download and extraction.
- The accelerometer still needs `sensors-accel-mount` for the correct orientation, and `desktop-kde-duo` for rotation on KDE.
