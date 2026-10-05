<div align="center">

# zenbook-duo-linux

**Linux support for the 2026 ASUS Zenbook Duo (UX8407AA)**: Intel Core Ultra Series 3 "Panther Lake",
two 14" 2880×1800 OLED panels and a detachable keyboard. Every fix is a small module that you can
apply, check and revert with one command.

[![License: GPL-2.0](https://img.shields.io/badge/license-GPL--2.0-c4b5fd?style=flat-square)](LICENSE)
[![Linux 7.2+](https://img.shields.io/badge/linux-7.2%2B-86efac?style=flat-square)](#kernel-and-distribution-compatibility)
[![Hardware](https://img.shields.io/badge/hardware-UX8407AA-fbbf24?style=flat-square)](#is-this-repo-for-me)
[![No kernel rebuild](https://img.shields.io/badge/kernel%20rebuild-not%20required-86efac?style=flat-square)](#how-it-works)
[![Arch / CachyOS](https://img.shields.io/badge/distro-Arch%20%7C%20CachyOS-7dd3fc?style=flat-square)](#kernel-and-distribution-compatibility)

[**Is this repo for me?**](#is-this-repo-for-me) ·
[**Before / after**](#before--after) ·
[**Quick install**](#quick-install) ·
[**If the desktop freezes**](#if-the-desktop-freezes) ·
[**FAQ**](#faq)

</div>

---

## Is this repo for me?

Run this. It is read-only and needs no root:

```sh
curl -fsSL https://raw.githubusercontent.com/burakgon/zenbook-duo-linux/main/tools/check-hardware.sh | bash
```

| Check | Expected | Why it matters |
|---|---|---|
| Model (DMI) | `ASUS Zenbook Duo UX8407AA` | Modules refuse other boards (`DUO_FORCE=1` overrides) |
| CPU | Intel Core Ultra Series 3 (Panther Lake, family 6 model 204) | `xe` display, ISH, power tables |
| Touchscreens | ACPI `RAYD0001` (top) and `RAYD0002` (bottom) | `touchscreen-hid`, touch mapping |
| Audio | SoundWire, PCI subsystem `1043:1444`: CS42L43 + 2× CS35L56 | `audio-ghost-rt722` matches this board |
| Sensor hub | Intel ISH `8086:e445` | Needs ASUS's signed firmware for rotation and ambient light |
| Keyboard | ASUS `0b05:1cd7` (USB, docked) / `0b05:1cd8` (Bluetooth) | `keyboard-hid-asus` |
| Distribution | Arch, CachyOS or another Arch derivative | `pacman`/DKMS helpers; config-only modules work anywhere |
| Desktop | KDE Plasma 6 on Wayland | `desktop-kde-duo` (all other modules are desktop-independent) |

## Before / after

Measured on a UX8407AA with BIOS 310, `linux-cachyos` 7.2.9 and KDE Plasma 6.7.

| Hardware | Out of the box | With this repo | Module |
|---|---|---|---|
| **Top touchscreen + pen** (Raydium `RAYD0001`) | Dead. `raydium_i2c_ts` grabs a HID-over-I2C device it can't drive, and can Oops in `raydium_i2c_irq`. | Touch, multitouch and pen work through `i2c-hid`. | `touchscreen-hid` |
| **Speakers, headphones, mics** (CS42L43 + 2× CS35L56) | On 7.2.x: no sound card, only "Dummy Output". The BIOS declares an RT722 that isn't fitted, and `sof_sdw` fails with `-12`. | Sound card registers; speakers use ASUS's calibrated amp tuning, HiFi profile, jack detection. (7.3+ has the fix upstream.) | `audio-ghost-rt722` |
| **Accelerometer, ambient light, hinge sensor** (Intel ISH) | No sensors at all. The ISH rejects the generic firmware, so there is no auto-rotation and no auto-brightness. | All three sensors run on ASUS's signed ISH image, downloaded from ASUS and checksum-verified. | `sensors-ish-firmware` |
| **Rotation** | Screens upside down (the top panel is mounted 180° rotated). KWin turns both panels the same way, touch stops working after any rotation, and a brief tilt flips the screen. | Correct orientation; both panels rotate together, laid out around the hinge (laptop, tent, book). Touch and pen follow every change. Rotation waits for a 1 s stable reading. | `sensors-accel-mount`, `desktop-kde-duo` |
| **Keyboard on the bottom screen** | The bottom panel stays on under the keyboard and keeps drawing power. | The bottom panel turns off when the keyboard docks, and back on when you lift it. | `desktop-kde-duo` |
| **Brightness** | Slider and keys change a number in sysfs, but the OLEDs don't get dimmer: the panels only take brightness over DPCD/AUX. | One slider and the brightness keys change both panels' **hardware** backlight. There is no software dimming layer. | `display-dpcd-backlight`, `desktop-kde-duo` |
| **Colour depth** | 6-bit + dithering (`bpp=18`): 2880×1800@144 Hz doesn't fit the eDP link at 8 bpc, and the driver drops bits instead of using DSC. | 10-bit (`bpp=30`) through DSC; Panel Replay keeps working, same power. | `display-dsc-10bit` |
| **Cursor on the top screen** | 2–3 frozen copies of the cursor stay on screen (Panel Replay *Early Transport* bug). | One cursor. Only Early Transport is off; Panel Replay Selective Update keeps saving power. | `display-psr-et-off` |
| **Keyboard backlight, Fn keys** | The backlight never changes (stock `hid-asus` sends 64-byte reports, the keyboard times out with `-110`). Most Fn keys are dead over USB. The mic-mute LED never lights. | 3-level backlight; Fn keys (brightness, mic mute, backlight, …) work over USB and Bluetooth; the mic-mute LED follows the mute state. | `keyboard-hid-asus` |
| **Sustained performance** | No one runs Intel DTT: power limits stay at the firmware default, PL1 20 W / PL2 30 W. | Windows' own DTT tables per profile: balanced PL1 28→42 W / PL2 55 W, performance PL1 55 W / PL2 64 W. | `power-dtt` |
| **Power saver** | KDE's "Power Save" leaves the firmware in balanced: neither ASUS quiet nor the Intel low-power slider survives the shared `platform_profile` list. Switching straight from Performance snaps back to Balanced within a second. | Power Save = ASUS quiet fans + SoC low-power + Xe GPU power saving (Windows "Whisper": PL1 20–30 W). Every switch sticks. | `power-profile-sync` |
| **Wi-Fi latency** (BE201) | Power save always on: 16 ms average to the router, spikes to 158 ms. | On AC: 7 ms, no spikes. On battery: power save stays on. | `wifi-powersave-ac` |
| **Idle power** | Several PCI devices ship with runtime PM disabled; the fTPM is polled as an entropy source. | Runtime PM on (sensor hub, Wi-Fi and NVMe excluded on purpose), fTPM left alone. Idle package power 0.66–0.79 W. | `power-runtime-pm`, `power-tpm-rng` |

Works without this repo: suspend (s2idle, ~0.9% battery per hour lid closed), the bottom touchscreen and pen, Wi-Fi 7 (6 GHz / 320 MHz, 2.9 Gbit/s link), Bluetooth, the webcam and IR camera, NPU, GPU compute and video decode/encode.

Not there yet:
- **HDR:** needs libdisplay-info ≥ 0.4, which Arch doesn't ship yet; the panel puts its HDR metadata inside DisplayID 2.0.
- **VRR:** broken upstream on Panther Lake eDP; keep it at *Never*.

Details, logs and upstream references for each line: [`docs/hardware-report.md`](docs/hardware-report.md), [`docs/research-notes.md`](docs/research-notes.md).

## Quick install

```sh
git clone https://github.com/burakgon/zenbook-duo-linux.git
cd zenbook-duo-linux
./duo list                       # every module: needed here? applied? healthy?
sudo ./duo apply --recommended   # all default modules
sudo reboot
./duo doctor                     # whole-machine PASS / WARN / FAIL summary
```

Run `sudo ./duo apply` from your desktop user's shell. `desktop-kde-duo` builds a small Qt program and enables per-user services for every user.

### Or pick modules

```sh
./duo info power-dtt                         # what it does and why
sudo ./duo apply touchscreen-hid power-dtt
./duo status                                 # health check of every module
sudo ./duo revert power-dtt                  # undo exactly what it changed
sudo ./duo revert --all
./duo scan --acpi                            # full hardware snapshot (serials, MACs, SSIDs redacted)
```

## Modules

| Module | What it changes | Kernels |
|---|---|---|
| `touchscreen-hid` | Keeps `raydium_i2c_ts` off `RAYD0001`, so `i2c-hid` binds it | all |
| `audio-ghost-rt722` | DKMS `soundwire-intel` with the upstream ghost-RT722 quirk (ca02ffd4975c) | 7.2.x |
| `sensors-ish-firmware` | ASUS-signed ISH firmware in `/usr/lib/firmware/updates` | all |
| `sensors-accel-mount` | hwdb accelerometer mount matrix (panels mounted 180°) | all |
| `desktop-kde-duo` | `duo-rotate` user service (rotation, hinge layout, touch mapping, keyboard dock) + one brightness slider for both panels | KDE Plasma |
| `display-dpcd-backlight` | `xe.enable_dpcd_backlight=1` | all |
| `display-psr-et-off` | Panel Replay Early Transport off (debugfs bit at boot) | all |
| `display-dsc-10bit` | Forces DSC on both panels for 10 bpc (debugfs at boot) | all |
| `keyboard-hid-asus` | DKMS `hid-asus`: Duo IDs, 16-byte feature reports, hotkey descriptor fix, Fn-lock, mic-mute LED | 7.2.x, 7.3.x |
| `power-dtt` | `thermald --adaptive` with the BIOS's DTT tables | all |
| `power-profile-sync` | Maps power-profiles-daemon profiles onto asus-wmi, the SoC slider and the Xe GPU | all |
| `power-runtime-pm` | udev: runtime PM for PCI devices that ship without it | all |
| `power-tpm-rng` | udev: fTPM not used as a hardware RNG | all |
| `wifi-powersave-ac` | udev + NetworkManager dispatcher: Wi-Fi power save follows AC | all |

`./duo list` marks modules that your running kernel doesn't need as "n/a".

## If the desktop freezes

If the picture stops but the mouse or keyboard still respond, or a TTY still works (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F3</kbd>), capture the state before you reboot:

```sh
ps -eo etimes,stat,pid,wchan:24,cmd | awk 'NR==1 || $2 ~ /^D/'      # stuck (D-state) tasks
journalctl -k -b --no-pager | grep -E 'PSR idle state|DSB|FIFO underrun|Pageflip|controller timed out|bus ready|incomplete report' | tail -n 30
```

If you had to force a reboot, the previous boot's log still has it: `journalctl -b -1 -k`. Please open an issue with the output.

One freeze while pressing the brightness keys was seen on 7.2.9 and not reproduced since. The kernel kept logging through it, so the display stack hung, not the kernel. No PSR, DSB or I²C errors were logged.

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
kernel/patches/         kernel patches for upstream submission
tools/check-hardware.sh the "is this repo for me?" check
tools/hw-scan.sh        repeatable hardware scan + health summary (`duo scan`, `duo doctor`)
tools/power-measure.sh  battery power, package power and S0ix residency (run unplugged)
hardware-scan/          ACPI tables (DSDT/SSDT .dat + .dsl) and the DTT data vault of this model
```

- **Every change is recorded:** `duo_install_file`, `duo_enable_unit`, `duo_enable_user_unit`, `duo_pkg_install`, `duo_cmdline_add` and `duo_dkms_install` write each action to `/var/lib/zenbook-duo/modules/<id>/manifest`. Existing files are backed up before they are replaced. `duo revert` replays the manifest backwards, so there are no hand-written uninstall scripts.
- **Snapshots:** with `snapper` installed, `apply` and `revert` take a snapshot first. On CachyOS, Limine lists these snapshots in the boot menu.
- **Kernel command line:** a marked block in `/etc/default/limine` (then `limine-update`) or in `/etc/default/grub` (then `grub-mkconfig`).
- **No patched distribution packages:** fixes are kernel parameters, DKMS modules, udev/hwdb rules, firmware in `/usr/lib/firmware/updates`, systemd units and small tools. Nothing replaces a file that a package owns, so system updates never fight this repo.

## Kernel and distribution compatibility

| | 7.2.x | 7.3.x | 7.4+ |
|---|---|---|---|
| `audio-ghost-rt722` | DKMS, rebuilt on every kernel update | n/a (fixed upstream) | n/a |
| `keyboard-hid-asus` | DKMS (7.2 source) | DKMS (7.3 source) | needs a new source until upstream |
| everything else | ✅ | ✅ | ✅ |

`./duo status` after a kernel update tells you whether every fix is still active.

Arch and Arch-based distributions (tested on CachyOS) get everything. On Debian, Ubuntu or Fedora, the config-only modules apply as they are (`touchscreen-hid`, `sensors-*`, `display-*`, `power-runtime-pm`, `power-tpm-rng`, `wifi-powersave-ac`, `power-profile-sync`). The modules that install packages call `pacman`, and the cmdline helper supports Limine and GRUB.

## Upstream status

| Item | Status |
|---|---|
| Ghost RT722 audio quirk | `ca02ffd4975c` in 7.3-rc1. A 7.2.y backport request together with the ExpertBook and Zephyrus Duo quirks is drafted in [asus-expertbook-linux](https://github.com/burakgon/asus-expertbook-linux/blob/main/upstream-patches/stable-request-7.2-ghost-rt722.txt). |
| `raydium_i2c_ts` leaves HID-over-I2C devices to `i2c-hid` | [`kernel/patches/0001`](kernel/patches/), to be submitted |
| VRR DC balance (DSB poll errors) | `c034e8a46e4c` in 7.3-rc6, `Cc: stable` ([`kernel/patches/0002`](kernel/patches/)) |
| Panel Replay Early Transport ghost cursor | to be reported to drm/xe |
| `hid-asus` Zenbook Duo keyboard support | to be submitted |
| HDR (DisplayID 2.0 HDR metadata) | fixed in libdisplay-info 0.4.0; Arch packaging update pending |
| KDE: one backlight per built-in panel | KDE bug 525717 |

## FAQ

<details>
<summary><b>Do I have to rebuild the kernel?</b></summary>

No. Two modules use DKMS (`audio-ghost-rt722` on 7.2.x only, `keyboard-hid-asus`), which rebuilds them automatically on kernel updates. Everything else is configuration.
</details>

<details>
<summary><b>How do I undo everything?</b></summary>

`sudo ./duo revert --all`, then reboot. Every file the repo installed is removed or restored from its backup. If you use snapper, there is also a snapshot from before each apply.
</details>

<details>
<summary><b>Why does the laptop draw ~3 W more with the keyboard docked?</b></summary>

The keyboard charges its own battery from the laptop through the pogo pins until it is full. The keyboard backlight costs less than 0.1 W. The same happens on Windows.
</details>

<details>
<summary><b>Why is there no HDR toggle?</b></summary>

The panel supports HDR (PQ, BT.2020, 1060 nits peak), but it puts that information in a CTA-861 block inside a DisplayID 2.0 extension, which libdisplay-info 0.3.0 doesn't read. 0.4.0 does. When your distribution ships it, the toggle appears. `display-dsc-10bit` already provides the 10 bpc that HDR needs.
</details>

<details>
<summary><b>Should I enable VRR?</b></summary>

Not on Panther Lake eDP yet: it gets stuck at the minimum refresh rate and causes DSB errors (xe #8976, #9253, #9296). Keep KDE's Adaptive Sync at *Never*. Thanks to Panel Replay, a static screen costs the same at 144 Hz as at 60 Hz.
</details>

<details>
<summary><b>I use GNOME. Does this help?</b></summary>

Everything except `desktop-kde-duo` is desktop-independent. Rotation and dual-screen layout on GNOME would need a separate tool; contributions welcome.
</details>

<details>
<summary><b>Is it safe?</b></summary>

Each module is small and recorded, and `./duo revert` undoes it. The riskiest pieces are the two DKMS drivers; if one fails to build, the stock driver loads and you lose only that fix.
</details>

## Contributing

Reports and measurements from other UX8407AA units are very welcome. `./duo scan` produces a redacted snapshot you can attach. Before you change a module, check that `./duo apply`, `./duo status` and `./duo revert` still behave.

## Acknowledgements

- Charles Keepax (Cirrus Logic) for the ghost-RT722 SoundWire quirk for this model.
- [asus-expertbook-linux](https://github.com/burakgon/asus-expertbook-linux), the sister project for the ExpertBook Ultra on the same platform: the power-profiles-daemon snap-back fix and the freeze runbook come from there.
- [Omarchy](https://github.com/basecamp/omarchy) for its Panther Lake hardware notes.

## License

GPL-2.0-only (see [LICENSE](LICENSE)). The DKMS sources are derived from the Linux kernel and keep their original copyright notices. The ACPI tables in `hardware-scan/` are dumped from the firmware for reference.
