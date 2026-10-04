# Research notes and upstream references

Upstream sources the modules in this repo rely on, as of 2026-10-04. Their status will change over time, so re-check them after kernel updates. Findings and measurements are in [`hardware-report.md`](hardware-report.md).

## Audio

- `ca02ffd4975c` soundwire: dmi-quirks: Disable ghost Realtek on Asus Zenbook Duo (Charles Keepax, 2026-07-20). In 7.3-rc1, no stable tag. → `audio-ghost-rt722`

## Display (xe)

- DSB poll error / VRR DC balance: xe #8564, #9253, #9296, #9385, #8556, #9258. Root cause: 555819270707 (v7.0). Fix: `c034e8a46e4c` drm/i915/vrr: Disable DC balance by default (mainline 2026-10-03, 7.3-rc6, `Cc: stable # v7.0+`); adds the `xe.enable_dc_balance` parameter (default 0). → `kernel/patches/0002`
- Partial DSB fixes (in 7.3-rc5, not in 7.2.y): f7140c7cef30, 4a68c7516c57, b201029ca695.
- Pending: Jouni Högander, "Selective fetch calculation fixes", 8 patches, 2026-09-29 (1/8 and 4/8 tagged for stable).
- 6 bpc vs DSC: v1 of "prefer DSC" was rejected; the merged 22931a311193 (7.3-rc1) only covers DP→HDMI. KWin HDR forces DSC. Risk: #8923.
- eDP-2 / PHY B: #7764, #8392, #9196 ("PHY B failed to request refclk"; Intel has a "Cx0 PLL enable retry" debug patch).

## Keyboard (hid-asus)

- IDs: UX8406MA 0x1b2c/0x1b2d, UX8406CA 0x1bf2/0x1bf3, **UX8407AA 0x1cd7 (USB) / 0x1cd8 (BT)**.
- Pisati/Leivenzon/Jones series (7 patches, 2026-05-13): picked up into hid.git and dropped the same day due to a build failure. Rebecca Mara Müller's UX8407AA patch (2026-08-11): pending. Both use BIT(15) (now `QUIRK_FILTER_CAMERA_COMPANION` in mainline).
- Protocol (report 0x5a, 16 bytes): handshake `5A "ASUS Tech.Inc." 00`, backlight `5A BA C5 C4 LL` (0-3), Fn-lock `5A D0 4E 01/00`.
- Fn codes: 0x10/0x20 brightness, 0xc7 keyboard backlight, 0x7c microphone, 0x6a ScreenPad, 0x9c display switch, 0x86 MyASUS, 0x5f ScreenXpert.
- The keyboard falls back to F-key mode while the touchpad is being configured: the handshake must be repeated about 2 s after probe.
- Already merged: asus-nb-wmi UX8407AA `key_wlan_event = ASUS_WMI_KEY_IGNORE` (2997606dd177, 7.1).

## Touchscreen

- raydium_i2c_ts: there is no upstream patch that makes it skip HID-over-I2C devices. Precedent: 65299e8bfb24 "Input: elants_i2c - do not bind to i2c-hid compatible ACPI instantiated devices" (`_CID` + HID `_DSM` check). Related Oops reports: Muhammad Bilal (2026-07-28), Pooyan Azad v2 (2026-09-28).

## ISH

- loader.c search order (7.0+, family support 043251b2dd1c): CRC32 combinations of vendor/family/name/sku. On this machine: ASUS=59b8d9f2, "Zenbook Duo"=f26dba0f, "Zenbook Duo UX8407AA"=c68ec386, SKU ""=00000000.
- ASUS package: SensorHub_DCH_Intel_Z_V5.8.62.0_48536.exe (SHA-256 735a2915…), image `AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin` (SHA-256 e031f54f…). linux-firmware has no ASUS image.

## asus-wmi

- Screenpad mask fix: Denis Benato's series, pdx86 review-ilpo-next (159e956fd4f9, 341b4769f5cf, 99215e618ff2, 854be60ed0e9), expected in 7.4. The device is meaningless on the Duo (asusctl #25).
- asus-armoury: no Zenbook (UX) model is in its table. The DSDT does not implement the PPT WMI IDs (0x001200A0/A3) anyway; power limits are managed through DTT/RAPL.

## KDE

- Brightness with two internal panels: KDE bug 525717 (PowerDevil exposes both backlights as one "Built-in Screen"). Workaround: KWin `allowSdrSoftwareBrightness=false` for eDP-2. → `desktop-kde-duo`
- HDR: libdisplay-info 0.4.0 (7324cca/73ec53d, 2026-07-23) parses the CTA-861 block embedded in DisplayID 2.0 that carries the panel's HDR metadata; 0.3.0 does not.

## Community

- scrambletools/zenbook-duo-omarchy (UX8407AA, Hyprland), alesya-h (UX8406MA), Fmstrat (UX8406CA), zakstam (Rust, USB+BT backlight), therealarnold666 (xe PHY B patch); tracking issue: OpenGamingCollective/asusctl#25.
- Bluetooth: the keyboard gets a new address every time it enters pairing mode. Pair from the laptop side: `bluetoothctl scan le` → pair/trust/connect. Pairing mode is F11/the Bluetooth key; the passkey is typed on the keyboard.
