# audio-ghost-rt722

Gives you working speakers, headphones and microphones on 7.2.x kernels.

## The problem
- On 7.2.x there is no sound card, only "Dummy Output". The kernel log shows `sof_sdw: probe ... failed with error -12`.
- The BIOS lists a Realtek RT722 codec on SoundWire link 3 that is not actually fitted, next to the real CS42L43. Kernel 7.2.x creates audio links for both, the names collide (`SDW3-Playback-SimpleJack`) and the sound card fails to register.
- The upstream fix (`ca02ffd4975c soundwire: dmi-quirks: Disable ghost Realtek on Asus Zenbook Duo`) is in 7.3, but it was not tagged for stable, so 7.2.y does not have it.

## What it changes
- Installs the `dkms` package if it is missing.
- Registers and builds the DKMS package `zenbook-duo-soundwire-intel` version `7.2.9.1` (source copied to `/usr/src/zenbook-duo-soundwire-intel-7.2.9.1`). It is `soundwire-intel` from Linux 7.2.9 plus the upstream quirk, installed to `/updates/dkms`.
- `dkms.conf` limits builds to 7.2.x kernels (`BUILD_EXCLUSIVE_KERNEL="^7\.2\."`); DKMS rebuilds it on every 7.2.x kernel update. It is built only for kernels whose headers are installed.
- A reboot is required.

## Check
```sh
./duo status audio-ghost-rt722
cat /proc/asound/cards                      # should list a sofsoundwire card
dkms status zenbook-duo-soundwire-intel
```

## Undo
`sudo ./duo revert audio-ghost-rt722`, then reboot. The `dkms` package stays installed (remove it with `pacman -Rns dkms` if nothing else needs it).

## Notes
- Kernel range: below 7.3-rc1 (`KERNEL_MAX="7.3-rc1"`). On 7.3 and later the fix is upstream and `./duo list` shows this module as n/a.
- With the fix, the CS35L56 amplifiers load ASUS's own tuning and calibration from firmware.
