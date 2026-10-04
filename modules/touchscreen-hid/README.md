# touchscreen-hid

Makes touch and pen work on the top screen.

## The problem
- Touch and pen on the top screen are completely dead. libinput rejects the device (`kernel bug: device has min == max on ABS_X`), and in one boot the kernel crashed with an Oops in `raydium_i2c_irq`.
- The top touchscreen (ACPI `RAYD0001`, `_CID PNP0C50`) speaks the standard HID-over-I2C protocol, but the `raydium_i2c_ts` driver claims it by its ACPI ID and cannot drive it.
- The bottom touchscreen (`RAYD0002`) is not affected.

## What it changes
- Installs `/etc/modprobe.d/zenbook-duo-touchscreen.conf`, which contains `blacklist raydium_i2c_ts` and `install raydium_i2c_ts /bin/false`. With that driver kept away, `i2c_hid_acpi` + `hid-multitouch` bind the top touchscreen instead.
- A reboot is required.

## Check
```sh
./duo status touchscreen-hid
readlink /sys/bus/i2c/devices/i2c-RAYD0001:00/driver   # should end in i2c_hid_acpi
```

## Undo
`sudo ./duo revert touchscreen-hid`, then reboot.

## Notes
- Works on all kernels.
- Upstream: a kernel patch (`Input: raydium_i2c_ts: skip HID-over-I2C devices`) is in `kernel/patches/`, not yet submitted.
- Rotation and touch-to-screen mapping are handled by `sensors-accel-mount` and `desktop-kde-duo`.
