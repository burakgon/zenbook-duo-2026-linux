# zenbook-duo-linux

Linux support for the **ASUS Zenbook Duo UX8407AA** (2026, Intel Core Ultra Series 3 "Panther Lake", two 14" 2880×1800 OLED panels, detachable keyboard).

Out of the box, a current kernel gets a lot of this laptop wrong. On a typical distribution:
- the top touchscreen and pen don't work;
- there is no sound on 7.2 kernels;
- auto-rotation turns the screens upside down;
- the brightness slider does nothing;
- the keyboard backlight and Fn keys don't work;
- power limits are far below what Windows uses.

This repository fixes all of these. Each fix is a small, separate **module** that you can apply, check and revert with one command. Every change is recorded, so reverting restores the previous state exactly.

Tested on CachyOS (Arch) with `linux-cachyos` 7.2.x and 7.3-rc, Limine, KDE Plasma 6.7 (Wayland). The kernel and firmware modules work on any distribution. The packaging helpers (`pacman`, DKMS, Limine/GRUB cmdline) and `desktop-kde-duo` assume Arch and KDE Plasma.

## Status

| Hardware | Status | Module |
|---|---|---|
| Top touchscreen + pen (RAYD0001) | ✅ | `touchscreen-hid` |
| Bottom touchscreen + pen (RAYD0002) | ✅ works out of the box | |
| Speakers, headphones, microphones (SoundWire, CS35L56 ×2 + CS42L43) | ✅ 7.2.x needs the fix; 7.3+ has it upstream | `audio-ghost-rt722` |
| Accelerometer, ambient light, hinge sensor (ISH) | ✅ | `sensors-ish-firmware`, `sensors-accel-mount` |
| Auto-rotation, dual-panel layout, touch mapping | ✅ KDE Plasma | `desktop-kde-duo` |
| Bottom panel off while the keyboard is docked on it | ✅ KDE Plasma | `desktop-kde-duo` |
| OLED brightness (both panels, one slider) | ✅ | `display-dpcd-backlight`, `desktop-kde-duo` |
| 10-bit colour | ✅ through DSC | `display-dsc-10bit` |
| Panel Replay (panel self refresh) | ✅ with Early Transport off (ghost cursors otherwise) | `display-psr-et-off` |
| HDR | ⏳ needs libdisplay-info ≥ 0.4 (the panel puts its HDR metadata inside DisplayID 2.0) | |
| VRR | ⚠️ broken on Panther Lake eDP upstream; keep it at "Never" | |
| Keyboard over USB (pogo) and Bluetooth: backlight, Fn keys, mic-mute LED | ✅ | `keyboard-hid-asus` |
| Power limits / thermals like Windows (Intel DTT tables) | ✅ | `power-dtt`, `power-profile-sync` |
| Idle power (runtime PM, entropy source) | ✅ | `power-runtime-pm`, `power-tpm-rng` |
| Wi-Fi 7 (BE201, 6 GHz / 320 MHz) | ✅ low latency on AC, power save on battery | `wifi-powersave-ac` |
| Webcam + IR camera (UVC) | ✅ works out of the box (no face login set up) | |
| NPU, GPU compute, video decode/encode | ✅ with the usual Intel userspace packages | |
| Suspend (s2idle) | 🔜 not verified yet | |

The details behind each line are in [`docs/hardware-report.md`](docs/hardware-report.md): root causes, measurements and the upstream bugs and commits involved. Upstream references are collected in [`docs/research-notes.md`](docs/research-notes.md).

## Quick start

```sh
git clone https://github.com/burakgon/zenbook-duo-linux.git
cd zenbook-duo-linux

./duo list                       # every module: needed? applied? healthy?
sudo ./duo apply --recommended   # apply all default modules
sudo reboot
./duo doctor                     # whole-machine PASS/WARN/FAIL summary
```

Apply or revert individual modules:

```sh
./duo info power-dtt             # what a module does and why
sudo ./duo apply touchscreen-hid power-dtt
sudo ./duo revert power-dtt      # undo everything that module changed
./duo status                     # run every module's health check
./duo scan --acpi                # full hardware scan into hardware-scan/snapshots/ (serials/MACs/SSIDs redacted)
```

Run `sudo ./duo apply` from your desktop user's shell. `desktop-kde-duo` builds a small Qt program and installs per-user services for every user.

## Modules

| Module | What it does | Kernels |
|---|---|---|
| `touchscreen-hid` | Hands the top touchscreen (RAYD0001) to `i2c-hid` instead of `raydium_i2c_ts`: touch and pen work, and the `raydium_i2c_irq` Oops is gone | all |
| `audio-ghost-rt722` | Filters the ghost RT722 codec that the BIOS declares, so `sof_sdw` probes (backport of upstream ca02ffd4975c, DKMS) | 7.2.x |
| `sensors-ish-firmware` | Downloads ASUS's signed ISH firmware from ASUS's driver package and verifies its checksum: accelerometer, ambient light, hinge | all |
| `sensors-accel-mount` | Accelerometer mount matrix (hwdb): the panels are mounted 180° rotated | all |
| `desktop-kde-duo` | **duo-rotate** user service (rotation, hinge-aware layout, touch/pen mapping, bottom panel follows the keyboard dock) + one brightness slider for both panels | KDE Plasma |
| `display-dpcd-backlight` | `xe.enable_dpcd_backlight=1`: the OLEDs only take brightness over DPCD/AUX | all |
| `display-psr-et-off` | Turns off Panel Replay *Early Transport* only (debugfs): no ghost cursors, Selective Update stays on | all |
| `display-dsc-10bit` | Forces DSC so the panels run at 10 bpc instead of 6 bpc + dithering | all |
| `keyboard-hid-asus` | Patched `hid-asus` (DKMS): Duo keyboard IDs, 16-byte feature reports, Fn hotkey descriptor fix, Fn-lock, mic-mute LED | 7.2.x, 7.3.x |
| `power-dtt` | `thermald --adaptive` applies the BIOS's Intel DTT tables (PL1/PL2/TCC per profile, like Windows) | all |
| `power-profile-sync` | power-profiles-daemon "power saver" also selects ASUS *quiet* + SoC low-power + Xe power saving (Windows "Whisper") | all |
| `power-runtime-pm` | Runtime PM for PCI devices that ship with it disabled | all |
| `power-tpm-rng` | Stops the fTPM from being polled as an entropy source | all |
| `wifi-powersave-ac` | Wi-Fi power save off on AC (7 ms instead of 16 ms average, no 150 ms spikes), on with battery | all |

`./duo list` shows "n/a" for modules your running kernel no longer needs.

## How it works

```
duo                     CLI (bash)
lib/common.sh           logging, kernel version compare (rc < final), DMI checks, module metadata
lib/actions.sh          recorded system changes + automatic revert
modules/<id>/
  module.conf           ID, NAME, SUMMARY, CATEGORY, SEVERITY, RISK, REBOOT, KERNEL_MIN/MAX, DEFAULT, UPSTREAM
  apply.sh              idempotent; only uses the lib/actions.sh helpers
  status.sh             0 = healthy, 1 = needs fix, 2 = not applicable
  files/ dkms/ src/     files to install, DKMS sources, sources to build
kernel/patches/         kernel patches meant for upstream submission
tools/hw-scan.sh        repeatable hardware scan + health summary (used by `duo scan` / `duo doctor`)
tools/power-measure.sh  battery power, package power and S0ix residency (run unplugged)
hardware-scan/          ACPI tables (DSDT/SSDT .dat + .dsl) and the DTT data vault of this model
```

- **Manifest:** `duo_install_file`, `duo_enable_unit`, `duo_enable_user_unit`, `duo_pkg_install`, `duo_cmdline_add` and `duo_dkms_install` record every action in `/var/lib/zenbook-duo/modules/<id>/manifest`. Existing files are backed up before they are overwritten. `duo revert` replays the manifest backwards, so no module has a hand-written revert script.
- **Snapshots:** if `snapper` is installed, `apply` and `revert` take a snapshot first. On CachyOS, Limine lists these snapshots in the boot menu.
- **Kernel command line:** kept as a marked block in `/etc/default/limine` (followed by `limine-update`), or in `GRUB_CMDLINE_LINUX_DEFAULT`.
- **Kernel versions:** modules declare `KERNEL_MIN`/`KERNEL_MAX`, and DKMS packages use the same range in `BUILD_EXCLUSIVE_KERNEL`. A fix that is upstream in 7.3 is built only for 7.2.x. On kernel updates, DKMS rebuilds the modules automatically.
- **No patched distribution packages:** fixes are kernel parameters, DKMS modules, udev/hwdb rules, firmware in `/usr/lib/firmware/updates`, systemd units and small tools. Nothing replaces a package from your distribution, so system updates never conflict with this repository.

## Keeping up with kernels

- **7.2.x point releases:** DKMS rebuilds `audio-ghost-rt722` and `keyboard-hid-asus` automatically.
- **7.3:** the audio fix is upstream (the module becomes n/a); `keyboard-hid-asus` ships a 7.3 source.
- **7.4 and later:** `keyboard-hid-asus` needs a source update until the changes are upstream (contributions welcome).

After any kernel update, `./duo status` tells you whether every fix is still active.

## Known issues

- **The detachable keyboard charges its own battery from the laptop while docked** (~3 W until it is full). This is hardware behaviour; it happens on Windows too.
- **Unbound keys:** Copilot, MyASUS, the bottom-screen toggle (F13) and the screen-swap key send key codes but do nothing yet. Bind them in System Settings → Shortcuts.

## Contributing

Bug reports and measurements from other units are very welcome. `./duo scan` produces a redacted snapshot you can attach. Before you change a module, check that `./duo apply`, `./duo status` and `./duo revert` still behave.

## License

GPL-2.0-only (see [LICENSE](LICENSE)). The DKMS sources are derived from the Linux kernel and keep their original copyright notices. ACPI tables in `hardware-scan/` are dumped from the firmware for reference.
