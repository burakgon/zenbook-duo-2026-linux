# power-profile-sync

Makes the "Power Save" profile really save power (quiet fans, low-power SoC, GPU power saving) and makes every profile switch stick.

## The problem
- Choosing "Power Save" in KDE leaves the firmware in balanced: no quiet fan mode and no Windows "Whisper" power limits, only a different CPU energy preference.
- The kernel's combined `platform_profile` only offers choices that every handler shares. `asus-wmi` calls its low-power mode `quiet`, the Intel SoC Power Slider calls it `low-power`, so neither survives and power-profiles-daemon cannot select them.
- Switching straight from Performance to Power Save snaps back to Balanced within a second: power-profiles-daemon emulates power-saver by writing "balanced" and then reads its own write back as a profile change.
- power-profiles-daemon does not manage the Xe GPU's power profile at all.

## What it changes
- Installs `/usr/lib/zenbook-duo/zenbook-duo-profile-sync` and `/etc/systemd/system/zenbook-duo-profile-sync.service`, then enables and starts the service. It watches the active profile over D-Bus and re-applies after every resume (no periodic wakeups), and writes:
  - power-saver: `asus-wmi` = `quiet`, SoC slider = `low-power`, Xe GPU `power_profile` = `power_saving`
  - balanced / performance: both handlers = the same name, Xe GPU = `base`
- Installs the drop-in `/etc/systemd/system/power-profiles-daemon.service.d/50-zenbook-duo-block-platform-profile.conf`, which starts power-profiles-daemon with `--block-driver=platform_profile`. Apply stops with an error if another drop-in already sets `ExecStart`.
- Restarts `power-profiles-daemon` and restores the profile that was active. No reboot is needed.

## Check
```sh
./duo status power-profile-sync
powerprofilesctl get; grep . /sys/class/platform-profile/*/profile
```

## Undo
`sudo ./duo revert power-profile-sync`. The drop-in is removed and `power-profiles-daemon` restarts without it.

## Notes
- Works on all kernels. Requires power-profiles-daemon.
- Use it together with `power-dtt`: thermald applies the Whisper limits (PL1 20-30 W, PL2 35 W) once the firmware is in quiet mode.
