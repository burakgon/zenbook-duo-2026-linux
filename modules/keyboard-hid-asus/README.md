# keyboard-hid-asus

Makes the detachable keyboard's backlight, Fn keys, Fn-lock and mic-mute LED work over USB and Bluetooth.

## The problem
- The keyboard backlight never changes, most Fn keys do nothing over USB, and the mic-mute LED never lights.
- The keyboard (`0b05:1cd7` docked over USB, `0b05:1cd8` over Bluetooth) is not in the stock `hid-asus` ID table, so it falls back to `hid-generic`.
- Even when bound, stock `hid-asus` sends 64-byte feature reports; this keyboard expects 16 bytes and times out (`-110`). The hotkey report `0x5a` is also declared in a form `hid-asus` cannot map to keys.

## What it changes
- Installs the `dkms` package if it is missing.
- Registers and builds the DKMS package `zenbook-duo-hid-asus` version `1.3` (source copied to `/usr/src/zenbook-duo-hid-asus-1.3`), installed to `/updates/dkms`. It adds the Duo IDs (the touchpad stays on `hid-multitouch`), clamps feature reports to the device's report length, rewrites the `0x5a` hotkey descriptor, and adds the missing Duo key codes.
- Separate sources for 7.2.x and 7.3.x (`dkms/src/7.2`, `dkms/src/7.3`); `dkms.conf` limits builds to those series (`BUILD_EXCLUSIVE_KERNEL="^7\.[23]\."`). It is built only for kernels whose headers are installed.
- Reloads `hid_asus` and rebinds the keyboard's ASUS control interface right away, so no reboot is normally needed (reboot if the backlight still does not respond).

## Check
```sh
./duo status keyboard-hid-asus
cat /sys/class/leds/asus::kbd_backlight/brightness   # 0-3
```

## Undo
`sudo ./duo revert keyboard-hid-asus`, then reboot. The `dkms` package stays installed.

## Notes
- Kernels: 7.2.x and 7.3.x. 7.4 and later need a new source copy until the support is upstream.
- Upstream: no Duo IDs in mainline `hid-asus`; submission is still to be done.
- Over Bluetooth the keyboard must be paired first; after that the backlight and keys work detached too.
- The Copilot, MyASUS, F13 and display-switch keys have no action assigned.
