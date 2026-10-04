# desktop-kde-duo

Makes KDE Plasma (Wayland) handle the two screens properly: correct rotation, layout around the hinge, touch that follows rotation, the bottom screen off under the keyboard, and one brightness slider for both panels.

## The problem
- KWin's auto-rotation rotates every screen the same way, but the top panel is mounted 180 degrees from the bottom one. It does not move the panels around the hinge, resets touch orientation after every rotation (touch stops working), and reacts to every brief tilt.
- The bottom panel stays on under the docked keyboard and keeps drawing power.
- KDE treats the two panel backlights as one device bound to the top panel, and gives the bottom panel an extra software-dimming slider (KDE bug 525717).

## What it changes
- Installs packages if missing: `gcc`, `pkgconf`, `qt6-base`, `libkscreen`, `python`.
- Builds `duo-rotate` from `src/duo-rotate.cpp` and installs it as `/usr/lib/zenbook-duo/duo-rotate`, with the user unit `/etc/systemd/user/zenbook-duo-rotate.service`. duo-rotate:
  - while the keyboard is docked over USB (`0b05:1cd7`): laptop layout, bottom panel off; lifted off: bottom panel back on
  - otherwise follows the sensor once the orientation has been stable for 1 s; bottom panel = top + 180 degrees, stacked or side by side according to the hinge
  - reapplies touch and pen mapping after every screen change, and sets KWin's own auto-rotation to Never
- Installs `/usr/lib/zenbook-duo/kwin-output-prefs` and the user unit `/etc/systemd/user/zenbook-duo-kwin-output-prefs.service`. Before KWin starts, it sets `allowSdrSoftwareBrightness=false` for `eDP-2` in `~/.config/kwinoutputconfig.json`, so one slider and the brightness keys drive both panels' hardware backlights.
- Both user units are enabled for every user (`systemctl --global`). Log out and back in to start them.

## Check
```sh
./duo status desktop-kde-duo
systemctl --user status zenbook-duo-rotate
```

## Undo
`sudo ./duo revert desktop-kde-duo`, then log out and back in. The installed build packages stay installed, and the `allowSdrSoftwareBrightness` change in `kwinoutputconfig.json` is not undone.

## Notes
- Needs KDE Plasma 6 on Wayland; run `sudo ./duo apply` from your desktop user's shell. All other modules are desktop-independent.
- Works best with `sensors-ish-firmware`, `sensors-accel-mount` and `display-dpcd-backlight`.
- On the very first login KWin creates its config file, so the single brightness slider applies from the next login.
- Not implemented yet: posture detection from the hinge sensor.
