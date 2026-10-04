# power-runtime-pm

Lets several idle platform PCI devices power down on their own, which lowers idle power.

## The problem
- Several Panther Lake platform PCI functions ship with runtime power management off (`power/control` = `on`), so they stay powered even when idle.
- They include Bluetooth, CSME/HECI, DTT, telemetry, SRAM, eSPI, SPI and the host bridge.

## What it changes
- Installs `/etc/udev/rules.d/90-zenbook-duo-runtime-pm.rules`, which sets `power/control` to `auto` for Intel (`0x8086`) PCI devices `e476`, `e462`, `e45d`, `e470`, `b01d`, `b07d`, `e47f`, `e402`, `e423` and `b001`.
- Reloads udev rules and re-triggers PCI devices, so it takes effect immediately. No reboot is needed.
- Excluded on purpose: the sensor hub (ISH, `8086:e445`), Wi-Fi (`8086:e440`) and NVMe.

## Check
```sh
./duo status power-runtime-pm
grep -l '^on$' /sys/bus/pci/devices/*/power/control   # devices still kept powered
```

## Undo
`sudo ./duo revert power-runtime-pm`. Devices already set to `auto` keep that until the next reboot.

## Notes
- Works on all kernels.
- Measured idle package power with the power modules applied: 0.66-0.79 W.
