# desktop-kde-duo

Makes KDE Plasma (Wayland) handle the two screens properly: correct rotation, layout around the hinge, touch that follows rotation, the bottom screen off under the keyboard, and one brightness slider for both panels.

## The problem
- KWin's auto-rotation rotates every screen the same way, but the top panel is mounted 180 degrees from the bottom one. It does not move the panels around the hinge, resets touch orientation after every rotation (touch stops working), and reacts to every brief tilt.
- The bottom panel stays on under the docked keyboard and keeps drawing power.
- The Plasma login screen shows the top panel upside down (the panel is mounted rotated and the login screen keeps its own display settings).
- KDE treats the two panel backlights as one device bound to the top panel, and gives the bottom panel an extra software-dimming slider (KDE bug 525717).

## What it changes
- Installs packages if missing: `gcc`, `pkgconf`, `qt6-base`, `libkscreen`, `python`.
- Builds `duo-rotate` from `src/duo-rotate.cpp` and installs it as `/usr/lib/zenbook-duo/duo-rotate`, with the user unit `/etc/systemd/user/zenbook-duo-rotate.service`. duo-rotate:
  - while the keyboard is docked over USB (`0b05:1cd7`): laptop layout, bottom panel off; lifted off: bottom panel back on. Dock changes come from udev events and count once stable for 1 s (no polling)
  - otherwise follows the sensor once the orientation has been stable for 1 s; bottom panel = top + 180 degrees, stacked or side by side according to the hinge. The accelerometer is only claimed while the keyboard is lifted, so the sensor hub idles while docked
  - reapplies touch and pen mapping after every screen change, whenever KWin re-adds an input device and after every resume (KWin resets the top touchscreen's orientation when i2c-hid re-probes it), and sets KWin's own auto-rotation to Never
  - guards the bottom panel against the eDP-2 kernel bug (xe #7764 / #9196): after a power-on with the keyboard docked (its first USB enumeration in the kernel log is within 20 s of boot) it never enables the bottom panel for that boot, because that first enable fails and can hang the machine; lifting the keyboard then shows a notification instead. It also never re-enables the panel while the system shuts down, and checks the kernel log at start and after each enable; on a hit it keeps the panel off for the rest of the boot and shows a notification with the power-reset steps
  - copies the top panel's brightness to the bottom panel after enabling it (the firmware brings eDP-2 back at maximum brightness) and after resume, through logind's `SetBrightness` (no root)
  - idle cost: no periodic wakeups (measured 0 wakeups in 30 s)
- Installs `/usr/lib/zenbook-duo/kwin-output-prefs` and the user unit `/etc/systemd/user/zenbook-duo-kwin-output-prefs.service`. Before KWin starts, it sets `allowSdrSoftwareBrightness=false` for `eDP-2` in `~/.config/kwinoutputconfig.json`, so one slider and the brightness keys drive both panels' hardware backlights.
- Both user units also run on the Plasma login screen (user `plasmalogin`, `plasma-login-wayland.target`), so the login screen is the right way up, follows rotation, maps touch and turns the bottom panel off under the keyboard just like the session. The login screen's instance stops when you log in and the session's takes over.
- Installs `/etc/polkit-1/rules.d/50-zenbook-duo-login-sensors.rules`: lets the login screen's user claim the accelerometer (iio-sensor-proxy only allows active user sessions by default).
- Installs `/usr/lib/zenbook-duo/boot-dock` and enables `zenbook-duo-boot-dock.service` (system, at boot): it records in `/run/zenbook-duo/docked-at-boot` whether the keyboard was docked at power-on, which duo-rotate needs on the login screen, where it cannot read the kernel log.
- Both user units are enabled for every user (`systemctl --global`). Log out and back in to start them.

## Check
```sh
./duo status desktop-kde-duo
systemctl --user status zenbook-duo-rotate
journalctl --user -u zenbook-duo-rotate -b     # rotations, dock changes, eDP-2 checks
```

## Undo
`sudo ./duo revert desktop-kde-duo`, then log out and back in. The installed build packages stay installed, and the `allowSdrSoftwareBrightness` change in `kwinoutputconfig.json` is not undone.

## Notes
- Needs KDE Plasma 6 on Wayland; run `sudo ./duo apply` from your desktop user's shell. All other modules are desktop-independent.
- Works best with `sensors-ish-firmware`, `sensors-accel-mount` and `display-dpcd-backlight`.
- On the very first login KWin creates its config file, so the single brightness slider applies from the next login.
- Not implemented yet: posture detection from the hinge sensor.
