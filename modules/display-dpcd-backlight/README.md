# display-dpcd-backlight

Makes the brightness slider and keys actually change the OLED panels' brightness.

## The problem
- The brightness slider and keys change a number in sysfs, but the screens do not get dimmer or brighter.
- Both BOE NB140B9M panels accept brightness only over the DisplayPort AUX channel (DPCD `0x701=0x99`, `0x702=0x86`). The `xe` driver follows the firmware (VBT) and drives a PWM backlight that the panels ignore.

## What it changes
- Adds the kernel parameter `xe.enable_dpcd_backlight=1`. It is written to a marked block in `/etc/default/limine` (then `limine-update`) or `/etc/default/grub` (then `grub-mkconfig`).
- A reboot is required.

## Check
```sh
./duo status display-dpcd-backlight
cat /sys/module/xe/parameters/enable_dpcd_backlight   # should print 1
```

## Undo
`sudo ./duo revert display-dpcd-backlight`, then reboot.

## Notes
- Works on all kernels.
- Each panel gets its own hardware backlight (range 0-504). On KDE, `desktop-kde-duo` makes one slider drive both panels (KDE bug 525717).
