# power-dtt

Applies the same per-profile power limits that Windows uses, so the CPU can sustain much more power in balanced and performance mode.

## The problem
- Out of the box the CPU stays at the firmware boot limits, PL1 20 W / PL2 30 W, whatever power profile you pick.
- The BIOS contains Intel Dynamic Tuning Technology (DTT) tables. On Windows, the DTT service applies them when the profile changes. On Linux nothing listens: a profile change only sends `Notify(IETM, 0x88)`.

## What it changes
- Installs the `thermald` package if it is missing.
- Enables and starts `thermald.service`. thermald runs in adaptive mode and reads the BIOS DTT tables.
- No reboot is needed.

Limits from the BIOS tables (PL1 min-max / PL2):

| Profile | PL1 | PL2 |
|---|---|---|
| power-saver (Whisper) | 20-30 W | 35 W |
| balanced (Standard) | 28-42 W | 55 W |
| performance | 45-55 W | 64 W |

## Check
```sh
./duo status power-dtt
systemctl is-active thermald
```

## Undo
`sudo ./duo revert power-dtt`. thermald is disabled again if it was not enabled before; the `thermald` package stays installed.

## Notes
- Works on all kernels; userspace only.
- The power-saver (Whisper) limits are only reached together with `power-profile-sync`.
- The tables also include targets for high temperature, screen off and the Book/Stand postures.
- Under sustained full load in balanced, thermald lowers PL1 to 30 W after about 20 s, matching the Windows passive policy.
