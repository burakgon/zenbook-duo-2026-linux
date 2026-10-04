# display-psr-et-off

Removes the frozen extra copies of the mouse cursor on the top screen, while keeping Panel Replay's power saving.

## The problem
- Two or three frozen copies of the cursor stay on the top screen.
- The cause is the "Early Transport" part of Panel Replay Selective Update in the `xe` driver. Turning off only Early Transport fixes it; Panel Replay itself can stay on.
- There is no module parameter for Early Transport, only a debugfs debug bit. The Early Transport fixes already in 7.2.9 and 7.3-rc5 do not fix this bug.

## What it changes
- Installs and enables (`--now`) `/etc/systemd/system/zenbook-duo-psr-et-off.service`.
- At boot the service writes `0x20` to `/sys/kernel/debug/dri/0/i915_edp_psr_debug`, which disables only Selective Update Early Transport. Stopping the service writes `0` back.
- No reboot is needed.

## Check
```sh
./duo status display-psr-et-off
sudo grep "PSR mode" /sys/kernel/debug/dri/0/eDP-1/i915_psr_status   # should not mention Early Transport
```

## Undo
`sudo ./duo revert display-psr-et-off`

## Notes
- Works on all kernels. Upstream: not fixed yet, to be reported to drm/xe.
- `display-dsc-10bit` depends on this module: DSC together with Early Transport can corrupt the picture (xe #8923).
- Measured package power: 1.06 W with Panel Replay, 1.29 W without it, so keeping Panel Replay on matters.
- If you see stutter or corruption, the documented fallback is `xe.enable_panel_replay=0 xe.enable_psr=1` (PSR1). This module does not set it.
