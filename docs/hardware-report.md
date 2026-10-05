# ASUS Zenbook Duo 2026 (UX8407AA) on Linux — hardware report

Initial scan: 2026-10-04 on `7.3.0-rc5-1-cachyos-rc`. Boot logs from `7.2.9-1-cachyos` (three boots) were also analysed. Later measurements (2026-10-04/05) were taken on 7.2.9.

Raw data (ACPI tables, the DTT data vault, a thermald dump) lives in `hardware-scan/`. To regenerate it: `./duo scan --acpi`.

Upstream commits, bug numbers and patch series referenced here are collected in [`research-notes.md`](research-notes.md).

## 1. Hardware summary

| Component | Model | Driver | Status (7.3-rc5) |
|---|---|---|---|
| CPU | Core Ultra X9 378H (Panther Lake-H, 4P + 8E + 4LP-E, 16C/16T, max 5.0 GHz) | intel_pstate (HWP/EPP), hybrid capacity scaling | ✅ |
| iGPU | Arc B390 (Xe3, 8086:b080), display ver. 30 B0, DMC 2.36, GuC 70.72.1 | xe | ⚠️ DSB/PSR errors |
| NPU | Intel NPU 5 (8086:b03e) | intel_vpu, fw 2026-08-20 | ✅ |
| Displays | 2× BOE NB140B9M (T01 top / T02 bottom), 14", 2880×1800, 48–144 Hz VRR, 10-bit, HDR (BT.2020 PQ), 500 nits (full screen), 1060 nits (10% window), OLED | xe eDP-1 / eDP-2 | ⚠️ 6-bit output by default (section 3.1.3) |
| Touchscreen (top) | Raydium HID-over-I2C, ACPI TPL0 `RAYD0001` (`_CID PNP0C50`) | **wrong: raydium_i2c_ts** | ❌ dead + Oops |
| Touchscreen (bottom) | Raydium 2386:8C06, ACPI TPLX `RAYD0002` | i2c_hid_acpi + hid-multitouch (+ stylus) | ✅ |
| Keyboard (docked) | Primax 0b05:1cd7 (USB via pogo pins), 0b05:1cd8 in Bluetooth mode | **hid-generic** (+ touchpad: hid-multitouch) | ⚠️ no backlight and no ASUS Fn keys |
| ASUS HID (I2C) | ACPI HPTC, 0b05:1b4c, vendor page 0xff31, report 0x5a | hid-generic | ❓ function not yet known |
| Sensor hub | Intel ISH (8086:e445) → accelerometer, ALS, hinge | intel_ish_ipc | ❌ firmware → ✅ (module applied) |
| Camera | ASUS FHD (13d3:52b9) UVC: 1080p RGB + 640×400 IR + HID "prox/attention" sensor | uvcvideo, hid-sensor-prox | ✅ (IR/Hello: to do) |
| Audio | SOF PTL + SoundWire: 2× CS35L56 amplifiers (link 2), CS42L43 codec (link 3) | sof-audio-pci-intel-ptl, sof_sdw (function topologies) | ✅ 7.3 / ❌ 7.2.9 |
| Wi-Fi | Intel BE201 (Wi-Fi 7, 320 MHz, MLO), fw 107 | iwlwifi + iwlmld | ✅ (6 GHz/320 MHz, 3.8 Gbps) |
| Bluetooth | Intel CNVi (btintel_pcie), fw 214-29.26 | btintel_pcie | ✅ |
| Storage | Micron 2600 2 TB (DRAM-less, HMB 16 MB), fw V9MA002 | nvme, APST enabled | ✅ (14 unsafe shutdowns logged) |
| Memory | 32 GB LPDDR5X-9600 (Samsung) | zram 30 GB zstd, MGLRU | ✅ |
| USB4/TB | 2 ports, two TB domains, user security level + IOMMU DMA protection | thunderbolt, boltd | ✅ |
| Battery | 99 Wh, 2 cycles | BAT0, `charge_control_end_threshold` | ✅ (limit 100%) |
| Thermal/power | DTT (INTC10D4), SoC Power Slider, asus-wmi platform profile | int3400, processor_thermal | ❌ → ✅ (thermald) |
| Firmware | BIOS UX8407AA.310 (2026-07-08), EC 3.4, ME 21.0.2.1482 | fwupd: only a UEFI dbx update available | ✅ |

## 2. Audio on 7.2.9

In every 7.2.9 boot, **no sound card is created**. The BIOS lists, next to the real CS42L43 on SoundWire link 3, a **Realtek RT722** codec that is not physically present (`link 3 mfg_id 0x025d part_id 0x0722`). 7.2.9 creates DAI links for both, and registration fails with `sysfs: cannot create duplicate filename '…/sof_sdw/SDW3-Playback-SimpleJack'` → `sof_sdw: probe … failed with error -12`.

- Upstream fix: `ca02ffd4975c soundwire: dmi-quirks: Disable ghost Realtek on Asus Zenbook Duo` (Charles Keepax, Cirrus Logic, for the UX8407AA). It is in 7.3 but has no `Cc: stable` tag, so it was not backported to 7.2.y.
- Fix in this repo: the `audio-ghost-rt722` module (DKMS, 7.2.x only: `soundwire-intel` + the quirk). Applied.

More generally, there are 279 display commits between 7.2 and 7.3-rc5, and several Panther Lake specific fixes were not backported to 7.2.9: DSB safe window (b201029ca6, 4a68c7516c, f7140c7cef), PSR DC3CO (cd0121502c), stolen memory/FBC (0687ec06f5, f0cabcc880), and others. For this hardware 7.3 is clearly more mature than 7.2.

## 3. Findings by subsystem

### 3.1 Display (xe)

#### 3.1.1 DSB poll errors and VRR

- `[CRTC:153:pipe A] DSB 0 poll error` appears continuously on 7.3-rc5 as well (about 4–5 per minute, only while the screen is on).
- **Root cause**, confirmed upstream (xe #8564, #9253, #9296, #9385, #9258): the "VRR DC balance" feature introduced in v7.0, active when VRR is enabled on the top panel. KDE's VRR policy for eDP-1 was "Always" (the only possible DSB poll point is `intel_vrr_check_push_sent()`).
- **Fix**: `c034e8a46e4c drm/i915/vrr: Disable DC balance by default` was merged into mainline on 2026-10-03 (7.3-rc6) with `Cc: stable # v7.0+`. It was not yet in the 7.2.y queue at the time of writing. Saved as `kernel/patches/0002-…`; applies cleanly to 7.2.9 and 7.3-rc5.
- **Workaround**: the KDE VRR policy was first set to "Automatic" on both panels (VRR only for fullscreen games/video, which also avoids low-refresh flicker on OLED), and then to "Never", because Panther Lake eDP VRR is currently broken upstream (xe #8976 stuck at vmin, #9253/#9296 DSB errors/stutter, #9385). With "Never", zero DSB errors were logged over a full boot. Alternatively, `xe.enable_dsb=0`.

#### 3.1.2 Panel Replay and the ghost cursor (`display-psr-et-off`)

- Panel Replay with Selective Update (SU) is active on the top panel and enters the SLEEP state; it was initially reported disabled on the bottom panel.
- With Early Transport (ET) enabled, stale copies of the cursor remain on the top panel (mounted 180° rotated): 2–3 ghost cursors, verified on hardware. Disabling Panel Replay entirely, or disabling only ET (debugfs `i915_edp_psr_debug=0x20`), fixes it.
- There is no module parameter for ET. `display-psr-et-off` writes this bit at boot. The ET fixes present in 7.2.9 and 7.3-rc5 do not fix this bug (to be reported upstream).
- Fallback if stutter or corruption is seen: `xe.enable_panel_replay=0 xe.enable_psr=1` (PSR1). Related: xe #8923, #9119, Omarchy #11016 (Panel Replay latency on 7.2).
- A/B measurement: package power 1.06 W with Panel Replay, 1.29 W without.
- On 7.2.9: `Selective fetch area calculation failed in pipe A`.

#### 3.1.3 10-bit output (`display-dsc-10bit`)

- By default eDP-1 at 2880×1800@144 Hz is driven at **bpp=18 (6 bit + dithering)**. HBR2×4 (17.28 Gbps effective) is not enough for 8 bpc (20.4 Gbps). The panel supports DSC (RGB, 4 slices, 1/16 bpp), but the driver chooses to lower bpc instead of using DSC. The sink also lists HBR3, but `max_link_rate` is capped at 540000.
- Upstream rejected a general "prefer DSC on DP/eDP" change (Imre Deak: power and DSC reliability). The merged 22931a311193 only covers DP→HDMI converters, and falling back to 6 bpc on eDP is intentionally kept. There is no module parameter.
- Options considered: (1) enabling HDR for eDP-1 in KDE forces the driver to ≥30 bpp, i.e. DSC (verified in the code); (2) a 12-line local patch limited to eDP; (3) writing 1 to `eDP-1/i915_dsc_fec_support` in debugfs (takes effect on the next modeset, lost on reboot). Risk: open PTL bug #8923 (corruption on 2880×1800 DSC panels with Panel Replay early transport). The driver itself drops PR/SU based on the panel's "Panel Replay DSC support" capability.
- Chosen: option (3). `display-dsc-10bit` writes `i915_dsc_fec_support=1` for eDP-1 and eDP-2 at boot. Live test: bpp 18 (dithered) → 30, DSC on, Panel Replay SU stays on and enters SLEEP, power 4.95 → 4.78 W (no measurable cost). No large visible difference (expected; the difference shows in dark gradients). Still to verify: that it takes effect at KWin's first modeset on the next boot.

#### 3.1.4 Brightness (`display-dpcd-backlight`)

- The initial assessment was wrong: the PWM backlight value changes but never reaches the panel. The panels accept brightness only over AUX/DPCD (DPCD 0x701=0x99, 0x702=0x86).
- `display-dpcd-backlight` sets `xe.enable_dpcd_backlight=1`; range 0–504. Both panels can be controlled independently through sysfs; 22 rapid changes (with PR on and off) caused no freeze.
- KDE limitation (bug 525717): PowerDevil's backlighthelper presents the two backlight devices as a single "Built-in Screen" and writes the same value to both. KWin binds that single device to the first internal output (eDP-1), so the bottom screen's slider only does software dimming. Result: the top slider changes the hardware brightness of both panels, and the bottom slider applies extra software dimming to the bottom panel.
- Fix (no patches, KDE setting only): in KWin's output configuration, set `allowSdrSoftwareBrightness=false` for the bottom panel (eDP-2). KWin then offers no brightness slider for the bottom panel (kscreen-doctor: "Brightness control: unsupported"). The single slider and the brightness keys drive eDP-1, and PowerDevil writes the same value to both panels' hardware backlights. Verified: at 60% both panels read 303, at 79% both read 398. No software dimming. If this setting is lost (configuration reset), the bottom panel gets a software-dimming slider again. The `desktop-kde-duo` module sets it.
- **Tried and rejected**: patched PowerDevil + KWin packages (a separate hardware slider per panel). It worked, but needed a rebuild for every KDE release, so it was removed (git history: 695e1b2).
- A freeze once seen while using the brightness keys has no identified cause; the lockup detector and pstore are set up to capture it if it recurs.

#### 3.1.5 HDR

- KWin reports "HDR: incapable". Panel and kernel are ready: the EDID contains ST2084 (PQ), BT.2020 and 1060 nits; the connector exposes HDR_OUTPUT_METADATA, Colorspace and max bpc properties.
- However, the panel provides its HDR static metadata in a CTA-861 block embedded inside DisplayID 2.0. libdisplay-info 0.3.0 does not parse this block (support arrived in 0.4.0 via 7324cca/73ec53d, 2026-07-23). Arch still ships 0.3.0; a "New version: 0.4.0" entry is open in the packaging repository. Once the package is updated, the HDR option should appear on its own. No patched package or EDID override is used in the meantime.

#### 3.1.6 Other display notes

- `asus_screenpad` backlight value is 130816/255: the DSDT returns `brightness | 0xFF00 | 0x10000` for `0x00050032`, and asus-wmi does not mask it on init. An upstream fix (Denis Benato) is in pdx86, expected in 7.4. On the Duo this device is meaningless anyway: the bottom panel's brightness is `card0-eDP-2-backlight`.
- ALPM / LOBF: aux-less ALPM is enabled; LOBF is off (not needed with Panel Replay).
- Known open bugs for this model: xe #7764 (booting with the keyboard docked → eDP-2 flip_done timeout, LOBF), #9196 (re-enabling eDP-2 can lock up PHY B, "PHY B failed to request refclk"; recovers only after a full power cut), #8392. Any Duo display manager must therefore handle eDP-2 carefully.

#### 3.1.7 Bottom panel (eDP-2) lost after a docked boot

Two other UX8407AA projects investigated xe #7764 / #9196 in depth (not reproduced on this machine yet; the journal of earlier boots was lost to the old 50 MB journald limit):
- [zenbook-duo-omarchy](https://github.com/scrambletools/zenbook-duo-omarchy) (`reference/xe-bug-report/report.md`, 7.1.9): powering on with the keyboard docked fails the first eDP-2 enable in 9 of 9 boots with `PHY B failed to request refclk`, `Failed to bring PHY B to idle`, then `[CRTC pipe B] flip_done timed out`; every later commit touching pipe B stalls 10 s and shutdown takes about a minute. The state survives warm reboots; only a full power reset (charger out, hold power 15 s) clears it. A second trigger is an eDP-2 modeset interrupted by shutdown.
- [zenbook-duo26-Ubuntu26.04](https://github.com/therealarnold666/zenbook-duo26-Ubuntu26.04) (`XE_EDP2_KEYBOARD_AB_REPORT.md`, `UX8407AA_KERNEL_AND_RUNTIME_FIXES_2026-07-27.md`): with all their userspace masked, docked boots give `AUX B/DDI B/PHY B: timeout (status 0x7c7c023f)` and `Failed to read DPCD register 0x60`; at the failure the PHY B clock control reads `0xa0008400` against `0xf0008400` on the healthy PHY A (requests set, PLL/refclk acknowledgements missing). Their kernel patch (`patches/kernel/0001-ux8407aa-port-b-tcss-power-and-diagnostics.patch`, 7.2-rc4 base) requests TCSS power before C20 PLL programming on Port B; validated over multiple cold boots. Turning off PSR/Panel Replay, DSB, power-well variants and link retrain did not fix it for them.
- What this repo does (`desktop-kde-duo`): dock changes debounced for 1 s, no eDP-2 enable during shutdown (`PreparingForShutdown`), and a kernel-log check (`journalctl -k -b -g`) at start and 12 s after each enable; on a hit the panel stays off for the boot and the user gets a notification with the power-reset steps. `./duo doctor` reports the same patterns as a FAIL. The README asks to power on with the keyboard lifted.

### 3.2 Touchscreens and orientation

#### 3.2.1 Top touchscreen bound to the wrong driver (`touchscreen-hid`)

- In ACPI, TPL0 is clearly HID-over-I2C (`_CID PNP0C50`, HID `_DSM` → descriptor 0x0001), but `raydium_i2c_ts` claims the device via `_HID RAYD0001`:
  - libinput rejects the device: `kernel bug: device has min == max on ABS_X`. **Touch and pen on the top screen are completely dead.**
  - Observed in one boot: `Oops: general protection fault … RIP: raydium_i2c_irq+0x138` → kernel "Tainted: D".
- Fix: the `touchscreen-hid` module (blacklist; effective after reboot) and `kernel/patches/0001-…raydium…patch` (suitable for upstream submission; follows the precedent of 65299e8bfb24 in elants_i2c).

#### 3.2.2 Panel mounting and rotation (`sensors-accel-mount`)

- The top panel (eDP-1) is mounted 180° rotated; the bottom panel (eDP-2) is mounted normally (0°). (An initial assumption that both were rotated was wrong.) KWin does not apply the DRM `panel_orientation` property; a kernel parameter was tried and reverted.
- `sensors-accel-mount` installs an hwdb entry `ACCEL_MOUNT_MATRIX=-1,0,0;0,-1,0;0,0,1`, so the sensor reports the correct orientation for the chassis.
- The touch digitizers are not rotated (raw coordinates match what the viewer sees), but KWin rotates touches 180° together with the output transform.
- **Tried and rejected**:
  - libinput calibration matrix (`-1 0 1 0 -1 1`): in KWin it collapses all touches into a single point; unusable.
  - KWin per-device touch orientation `Orientation=8` plus mapping RAYD0001→eDP-1, RAYD0002→eDP-2, reapplied at each login (`tools/kde-touch-setup.sh`), and setting each output's auto-rotate policy to "InTabletMode" with a fixed rotation (`tools/duo-kscreen`, since `kscreen-doctor` cannot set this). Reason: KWin resets the touch orientation every time an output's rotation changes, and with auto-rotate "Always" transient accelerometer readings while moving the laptop flipped the screen for a moment and broke touch. Both tools were superseded by duo-rotate and were removed.

#### 3.2.3 duo-rotate (`desktop-kde-duo`)

KWin's auto-rotation does not suit this device: the panels are mounted 180° apart, KWin rotates every output in the same direction, does not reposition the panels, resets touch orientation on every rotation, and reacts immediately to every sensor reading.

duo-rotate (`modules/desktop-kde-duo/src/duo-rotate.cpp`) is a Qt/libkscreen user service, installed by `desktop-kde-duo`:

- while the keyboard is docked over USB (0b05:1cd7), the laptop layout is fixed and the bottom panel is turned off; when undocked, the iio-sensor-proxy orientation is applied once it has been stable for ≥1 s;
- top = sensor orientation (inverted/none/left/right), bottom = top + 180°; panels are stacked vertically or side by side according to the hinge;
- touch and pen mapping (top orientation 8, bottom 0) is reapplied after every layout change, whenever KWin re-adds an input device, and after every resume. On resume i2c-hid re-probes the touchscreens and KWin re-adds them with the default orientation without any output change, which left the top panel's touch 180° off (seen after s2idle tests on 2026-10-05);
- KWin's own auto-rotation is disabled (policy Never).

Verified on hardware: laptop layout, upright (book) mode and touch. Not yet implemented: posture detection from the hinge sensor.

### 3.3 Keyboard (`keyboard-hid-asus`)

- 0b05:1cd7 binds to hid-generic. The ASUS control interface is interface 4 (usage page 0xff31/0x76, report 0x5a). The ID is not in the `hid-asus` table.
- Verified via hidraw: the `ASUS Tech.Inc.` handshake is echoed back, and the capability query returns `…08 01 21 41`, i.e. **byte[6]=0x01 → backlight supported**. The command `5A BA C5 C4 LL` (LL = 0–3) is accepted.
- The report 0x5a input is declared as Variable (`09 76 … 81 02`), so hid-asus cannot map the keys; the descriptor must be rewritten to Array (`19 00 2a ff 00 … 81 00`).
- Upstream: the Pisati/Leivenzon/Jones series (0x1b2c/0x1b2d, 0x1bf2/0x1bf3, 0x1cd7/0x1cd8) was dropped because of a build failure. Rebecca Mara Müller's UX8407AA patch (2026-08-11) is pending. Both use BIT(15), which mainline now uses for something else.
- Fn key codes (report 0x5a, byte 1): 0x10/0x20 brightness, 0xc7 keyboard backlight, 0x7c microphone, 0x6a ScreenPad, 0x9c display switch, 0x86 MyASUS, 0x5f ScreenXpert. Fn-lock: `5A D0 4E 01/00`.
- `keyboard-hid-asus` provides backlight, Fn keys, Fn-lock and the microphone LED over both USB and Bluetooth. (An earlier separate `keyboard-backlight` udev module was folded into it.) Copilot/MyASUS/F13/display-switch keys have no action assigned.
- Bluetooth: the keyboard must be paired for it to work when detached; once paired, backlight and keys work over BT. See [`research-notes.md`](research-notes.md) for pairing steps.

### 3.4 Power and performance: the biggest win

The Intel DTT data vault in the BIOS (GDDV, 3131 bytes, LZMA) was decoded (`hardware-scan/dtt/`). Windows applies these tables; Linux did not:

| DTT target (Windows) | Condition | PL1 min–max | PL2 | TCC offset |
|---|---|---|---|---|
| Whisper | Oem0=1 (asus-wmi quiet) | 20–30 W | 35 W | 11 |
| Standard / Default | Oem0=0 (balanced) | 28–42 W | 55 W | 8 |
| Performance | Oem0=2 | 45–55 W | 64 W | 3 |
| Stand_* | Oem3=7 (kickstand) | per profile | — | — |
| Book1/Book2 | Oem3=8/9 | 15–30 W | 23–33 W | 8–11 |
| HOT | SEN1 ≥ 74 °C | 15–18 W | 18 W | 30 |
| MS | Display off | 20–30 W | 35 W | 11 |

- Before: MMIO RAPL was fixed at **PL1=20 W / PL2=30 W**; a profile change only sent `Notify(IETM, 0x88)`, and nothing was listening.
- `power-dtt` (thermald `--adaptive`), applied and verified:
  - balanced → PL1 ramps 30→42 W, PL2 55 W, TCC 8
  - performance → ODV0=2, PL1 55 W, PL2 64 W, TCC 3
  - quiet → ODV0=1, PL1 30 W, PL2 35 W, TCC 11
- Profile mismatch (`power-profile-sync`): the unified platform-profile interface takes the intersection of asus-wmi's `quiet` and the Intel SoC slider's `low-power` choices. Only `balanced performance` remains, so the power-profiles-daemon "power-saver" profile could **not** engage the quiet fan mode and the Whisper limits (it only set EPP=power). `power-profile-sync` maps power-saver → quiet + low-power. With it:
  - power-saver = Whisper (ODV0=1, PL1 30 W, PL2 35 W, TCC 11, EPP power, Xe power_saving)
  - balanced = Standard (42/55 W)
  - performance = 55/64 W, TCC 3
- Balanced, full load (16 threads, 60 s): for the first ~20 s 55 W / 3.2 GHz / 93 °C, then thermald pulls the MSR PL1 down to 30 W (2.5 GHz, 80 °C). Throttle reasons: Thermal, PL1, PL2 log. This matches the Windows DTT passive policy. Of the DTT sensors, SEN1/3/4/6/7/8 read 0 °C (ACPI `_TMP`); SEN2 reports a real value.
- intel_lpmd (PTL M204 config: WLT hints + SoC slider management) and thermald run together; Omarchy/Dell use the same combination. intel_lpmd intentionally sets `min_perf_pct=50` on AC.
- `power-tpm-rng`: `hwrng` was reading the TPM about 20 times per second; disabled.
- `power-runtime-pm`: runtime PM set to "auto" for 10 platform PCI functions. Otherwise runtime PM is largely fine; NVMe has L1.2 enabled.
- Idle package power 0.66–0.79 W (CorWatt 0.03, GFX 0.01, RAM 0.14), in the same class as Dell XPS PTL reports (1.4–1.5 W system). The display engine reaches DC6, the GT C6; NVMe drops to PS3 after 100 ms and PS4 after 2 s. Idle S0i2.0/2.1 and PC10 residency are good.
- `SysWatt` (psys) is meaningless on AC with a full battery (~16–17 W, unchanged when the screen is turned off). Real measurements must be taken on battery with `tools/power-measure.sh`.
- With a browser playing YouTube (audio stream open, pipewire-pulse ~94 wakeups/s, xe vcs3 busy), Pkg%pc10 ≈ 0% and `slp_s0` does not increase even with the screen off. Real idle S0ix should be evaluated with the browser closed.
- **TRM (thermal vector) interrupts**: ~640/s while playing YouTube (tested with HFI, HWP and thermald disabled; no change). 0/s once the browser is closed, so this is a side effect of the playback load, not a kernel bug.
- EAS (energy-aware scheduling): an energy model is registered, but EAS is off because `intel_pstate` is in active mode ("cpufreq is not ready"). EAS needs passive mode + schedutil, where EPP is unavailable. Omarchy also stays in active mode. No A/B measurement on Panther Lake yet.
- FRED is enabled by default on 7.2 (`fred_sysvec_*` traces); Omarchy's `fred=on` parameter is unnecessary.

### 3.5 Sensors (`sensors-ish-firmware`): solved

- The generic `ish_ptl.bin` in linux-firmware is rejected due to its signature (`cmd 2 failed 10`).
- `AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin`, from the driver package ASUS publishes for the UX8407AA, is installed under the name the kernel looks for (`ish_ptl_59b8d9f2_c68ec386.bin`) and loads live **without a reboot**. Resulting sensors: `accel_3d`, `als`, `hinge` (hinge/screen/keyboard angles). iio-sensor-proxy: orientation = normal, light ≈ 7 lux.

### 3.6 Audio

- 7.2.x: see section 2 (`audio-ghost-rt722`).
- The Cirrus CS35L56 amplifiers load ASUS-specific tuning and calibration, so the EQ layer that the XPS needs in userspace lives in firmware here.
- On the test system, PulseAudio had replaced pipewire-pulse, which broke browser audio; reverting to pipewire-pulse fixed it. Not a hardware issue.

### 3.7 Network (`wifi-powersave-ac`)

- BE201: 6 GHz/320 MHz MLO, −57 dBm, Rx 3.46 Gbps (EHT-MCS 8, NSS 2), Tx 1.73 Gbps (NSS 1). 7.2.9 loads firmware c106 (7.3: c107; c108 is not supported by the kernel).
- With power saving on, gateway latency averaged 16 ms / max 158 ms; with it off, 7 ms. `wifi-powersave-ac` disables Wi-Fi power saving on AC.
- After boot, 2 roams between mesh APs, then stable. Omarchy disables EHT on the BE201 for Dell (`disable_11be`); not needed here, Tx NSS1 to be monitored.
- Occasional `missed beacons exceeds threshold` and MLO `association timed out` (possibly AP side).

### 3.8 Other

- ACPI: `\_SB.AUDC` is defined in both the DSDT and SSDT26 (AE_ALREADY_EXISTS, cosmetic); `_TRT` is empty.
- `intel-hid INTC10CC: failed to get button capability`, `ucsi GET_CURRENT_CAM failed`: cosmetic.

## 4. Comparison with Dell XPS / Omarchy claims

| Topic | On this machine |
|---|---|
| Panel Replay / PSR | ✅ PR + SU active; Early Transport disabled because of the ghost cursor (`display-psr-et-off`). A/B: package 1.06 W (PR) / 1.29 W (off) |
| ALPM / LOBF | ✅ aux-less ALPM enabled; LOBF off (not needed with PR) |
| DC5/DC6 | ✅ counters increase continuously; at idle only PW_A is on |
| FBC | ➖ disabled while SU is active (expected; same on the XPS) |
| VRR | ⚠️ broken upstream, intentionally "Never" |
| Audio | ✅ ASUS-specific tuning and calibration loaded into the Cirrus CS35L56 (the EQ layer the XPS needs is in firmware here) |
| Camera | ✅ UVC 1080p + IR (Windows Hello). The XPS's IPU7 problems do not apply here. IR face recognition not set up yet |
| NPU | ✅ intel_vpu + fw 2026-08-20; with `intel-npu-driver` + Level Zero, "Intel AI Boost" is listed (the user must be in the `render` group). The CachyOS `openvino` package only includes the CPU plugin; GPU/NPU need OpenVINO from pip |
| GPU compute | ✅ intel-compute-runtime: Level Zero + OpenCL (Intel and rusticl) |
| Hardware video | ✅ intel-media-driver, libvpl, vpl-gpu-rt; VA-API H.264/VP9/AV1 |
| Wi-Fi 7 | ✅ (section 3.7); disabling EHT was not needed |
| lpmd + thermald | ✅ both running; thermald applies the Windows DTT tables |
| ISH firmware | ✅ ASUS-signed (Dell put its image into linux-firmware, ASUS did not) |
| LVFS/fwupd | ➖ the ASUS BIOS is not on LVFS; only a UEFI dbx update is available |
| FRED | ✅ enabled in the kernel (`fred_sysvec_*` traces) |

## 5. Battery measurements (2026-10-05)

On battery, balanced profile, browser closed, a terminal open.

| State | System (BAT0 power_now) |
|---|---|
| Keyboard docked (bottom panel off), top panel 32%, 144 Hz | 9.5–10.2 W |
| Same, 60 Hz | 9.9 W (difference within noise; refresh rate barely matters with Panel Replay) |
| Keyboard detached (BT), bottom panel off | 4.7–6.4 W |

- The docked keyboard drew ~3.5 W: its battery was at 91% and charging through the pogo pins (hardware/EC behaviour, same on Windows). To be re-measured docked once the keyboard is at 100%.
- Package 1.11 W (cores 0.06, GPU 0.04, RAM 0.30), Busy 2.3%, PC10 only 10%, S0ix 3%: open terminal sessions kept redrawing the screen. True idle is lower (earlier measurement: 0.66–0.79 W package).

## 6. Background services and battery (2026-10-05)

Measured over 30 s idle on battery: `duo-rotate`, `zenbook-duo-profile-sync` and its two `gdbus monitor` children all had 0 context switches and 0 CPU ticks.
- duo-rotate: dock state from udev uevents (libudev monitor + 1 s debounce) instead of a 500 ms sysfs poll; the accelerometer is claimed from iio-sensor-proxy only while the keyboard is lifted.
- profile sync: no 60 s re-check loop; it re-applies on PPD `ActiveProfile` changes and after `PrepareForSleep(false)`, and reads the profile with `busctl` (3 ms) instead of `powerprofilesctl` (Python, about 120 ms CPU).
- system-health: no resident process (pacman hook + one oneshot per login).
- Testing resume handling needs `systemctl suspend` (with an RTC alarm from `rtcwake -m no`): `rtcwake -m freeze` writes `/sys/power/state` directly and logind never emits `PrepareForSleep`.

## 7. Suspend (s2idle, 2026-10-05)

- 6 h 2 min lid-closed sleep on 7.2.9, keyboard docked: clean entry and resume (Wi-Fi back after 6 s). Battery 88% → 82%, about 0.9%/h or 0.8–0.9 W, in line with Windows Modern Standby.
- Residency (PMC counters): S0i2.1 for practically the whole sleep, package C10 throughout; **S0i2.2 never**. `/sys/power/suspend_stats/last_hw_sleep` read only 258 s because that 32-bit microsecond counter wraps every ~71.6 min; use `pmc_core/substate_residencies` instead.
- With `pmc_core/lpm_latch_mode` set to `S0i2.1`, the S0i2.2-only requirements still unmet at S0i2.1 entry are `AON2_OFF`, `AON5_OFF`, `XTAL_AGGR_OFF` and `SOC_PLL_OFF`: the crystal and an always-on domain stay up.
- 60 s `rtcwake -m freeze` tests, each still 0 s of S0i2.2: keyboard docked; keyboard detached; Wi-Fi + Bluetooth blocked (`rfkill`); sensor hub driver removed (`intel_ish_ipc`); MEI drivers removed (`mei_gsc_proxy`, `mei_me`, `mei`).
- `pmc_core/s0ix_blocker` deltas over a sleep point at the CSE (Intel ME): `CSE_PGD0_PG_STS`, `CSE_VNN_REQ_STS` and `CSMERTC_VNN_REQ_STS` keep counting even with the MEI drivers unloaded. The CSE firmware keeps its domain powered by itself; nothing on the Linux side controls it. Whether Windows reaches S0i2.2 on this model is not known.

## 8. Module status and roadmap

| Priority | Module / item | Status |
|---|---|---|
| P0 | `touchscreen-hid`: top touchscreen + pen | ✅ applied (after reboot) + kernel patch |
| P0 | `audio-ghost-rt722`: audio on 7.2.x | ✅ applied (DKMS) |
| P0 | `sensors-ish-firmware`: rotation / ALS / hinge | ✅ applied, works live |
| P0 | `sensors-accel-mount`: accelerometer mount matrix | ✅ |
| P0 | `power-dtt`: Windows power tables | ✅ applied, verified |
| P0 | DSB errors: KDE VRR policy "Never" | ✅ permanent fix in 7.3-rc6 / 7.2.y stable (`kernel/patches/0002`) |
| P1 | `keyboard-hid-asus`: backlight, Fn keys, Fn-lock, mic LED, USB + BT | ✅ (no action assigned to Copilot/MyASUS/F13/display-switch keys) |
| P1 | `power-profile-sync`: power-saver → quiet + low-power | ✅ |
| P1 | `power-runtime-pm`: runtime PM for platform PCI functions | ✅ |
| P1 | `power-tpm-rng`: stop TPM hwrng polling | ✅ |
| P1 | `wifi-powersave-ac`: Wi-Fi power saving off on AC | ✅ |
| P1 | `desktop-kde-duo`: duo-rotate (rotation, dual-panel layout following the hinge, touch/pen mapping, bottom panel off while docked) + single brightness slider for both panels | ✅ (no posture detection from the hinge sensor yet) |
| P1 | Bluetooth keyboard | ✅ pairs; backlight and keys work |
| P2 | `display-dpcd-backlight`: panel brightness over DPCD | ✅ |
| P2 | `display-psr-et-off`: ghost cursor | ✅ |
| P2 | `display-dsc-10bit`: 10-bit via DSC | ✅ bpp 18 → 30, PR SU stays on, no power cost (4.95 / 4.78 W) |
| P2 | HDR | 🔜 waits for libdisplay-info 0.4.0 in Arch (section 3.1.5) |
| P2 | `asus-screenpad`: disable the bogus backlight (+ upstream patch) | 🔜 |
| P2 | Suspend: s2idle validation, S0i2.x | ✅ works, ~0.9%/h; S0i2.1 only, S0i2.2 blocked by CSE firmware (section 7) |
| P2 | Battery charge limit | 🔜 `charge_control_end_threshold`=100 (80% can be selected in KDE power settings) |
| P3 | `camera-ir-howdy`: IR face recognition; `presence`: lock when walking away | 🔜 |
| P3 | `audio-speaker-eq`: speaker EQ (PipeWire filter-chain) | 🔜 |

`tools/duo-kscreen` and `tools/kde-touch-setup.sh` were superseded by duo-rotate (`desktop-kde-duo`) and were removed.
