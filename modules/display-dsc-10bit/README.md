# display-dsc-10bit

Drives both OLED panels at 10 bits per colour through DSC compression, instead of 6 bits with dithering.

## The problem
- By default the panels run at `bpp=18` (6 bits per colour plus dithering). The difference shows mostly in dark gradients.
- 2880x1800 at 144 Hz does not fit the eDP link (HBR2x4) at 8 bits per colour. The panels support DSC compression, but the `xe` driver lowers the colour depth instead of using DSC. Upstream rejected a general "prefer DSC" change, and there is no module parameter.

## What it changes
- Installs and enables (`--now`) `/etc/systemd/system/zenbook-duo-dsc-10bit.service`. It runs after `zenbook-duo-psr-et-off.service` and before the display manager.
- At boot the service writes `1` to `/sys/kernel/debug/dri/0/eDP-1/i915_dsc_fec_support` and `.../eDP-2/i915_dsc_fec_support`. Stopping the service writes `0` back.
- The setting takes effect on each panel's next modeset (the compositor's first commit), so reboot to get it on both panels.

## Check
```sh
./duo status display-dsc-10bit
sudo grep -o 'bpp=[0-9]*' /sys/kernel/debug/dri/0/i915_display_info   # bpp=30 means 10 bpc
```

## Undo
`sudo ./duo revert display-dsc-10bit`, then reboot.

## Notes
- Works on all kernels.
- Requires `display-psr-et-off`: DSC together with Panel Replay Early Transport can corrupt the picture (xe #8923).
- Measured: `bpp` 18 -> 30, Panel Replay Selective Update stays on, no measurable power cost (4.95 W -> 4.78 W).
- 10 bpc is also what HDR needs. HDR itself still waits for libdisplay-info 0.4.0 in Arch.
