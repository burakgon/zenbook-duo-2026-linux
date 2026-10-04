# Upstream araştırma notları (2026-10-04)

Modüllerin dayandığı upstream kaynaklar. Durumları zamanla değişeceği için kernel güncellemelerinden sonra tekrar kontrol edilmeli.

## Ses
- `ca02ffd4975c` soundwire: dmi-quirks: Disable ghost Realtek on Asus Zenbook Duo (Charles Keepax, 2026-07-20). 7.3-rc1'de var, stable etiketi yok. → `audio-ghost-rt722`

## Ekran (xe)
- DSB poll error / VRR DC balance: xe #8564, #9253, #9296, #9385, #8556, #9258. Kök: 555819270707 (v7.0). Düzeltme: `c034e8a46e4c` drm/i915/vrr: Disable DC balance by default (mainline 2026-10-03, 7.3-rc6, `Cc: stable # v7.0+`), `xe.enable_dc_balance` parametresi (varsayılan 0) ekler. → `kernel/patches/0002`
- Kısmi DSB düzeltmeleri (7.3-rc5'te var, 7.2.y'de yok): f7140c7cef30, 4a68c7516c57, b201029ca695.
- 7.2.9 + Studio Display: #9253, #9385 (geçici çözüm `KWIN_DRM_NO_DIRECT_SCANOUT=1`), #9449 (vblank WARN, d08e46efae16), #9153, #8991, #9431.
- Bekleyen: Jouni Högander, "Selective fetch calculation fixes" 8 patch, 2026-09-29 (1/8 ve 4/8 stable etiketli).
- 6 bpc vs DSC: v1 "prefer DSC" reddedildi; birleştirilen 22931a311193 (7.3-rc1) yalnızca DP→HDMI. KWin HDR'ı DSC'yi zorlar. Risk: #8923.
- eDP-2 / PHY B: #7764, #8392, #9196 ("PHY B failed to request refclk"; Intel'in "Cx0 PLL enable retry" debug patch'i var).
- FBC uyarısı Studio Display plane'iyle ilgili; 7.3-rc1: f0cabcc880ab, 8e58bdd59508.

## Klavye (hid-asus)
- ID'ler: UX8406MA 0x1b2c/0x1b2d, UX8406CA 0x1bf2/0x1bf3, **UX8407AA 0x1cd7 (USB) / 0x1cd8 (BT)**.
- Pisati/Leivenzon/Jones serisi (7 patch, 2026-05-13): hid.git'e alındı, aynı gün build hatası nedeniyle düşürüldü. Rebecca Mara Müller UX8407AA patch'i (2026-08-11): beklemede. İkisi de BIT(15) kullanıyor (mainline'da artık `QUIRK_FILTER_CAMERA_COMPANION`).
- Protokol (rapor 0x5a, 16 bayt): el sıkışma `5A "ASUS Tech.Inc." 00`, arka ışık `5A BA C5 C4 LL` (0-3), Fn-lock `5A D0 4E 01/00`.
- Fn kodları: 0x10/0x20 parlaklık, 0xc7 klavye ışığı, 0x7c mikrofon, 0x6a ScreenPad, 0x9c ekran değiştir, 0x86 MyASUS, 0x5f ScreenXpert.
- Touchpad ayarlanırken klavye F-tuşu moduna dönüyor: probe'dan yaklaşık 2 sn sonra el sıkışmayı tekrarlamak gerekiyor.
- Zaten birleştirilmiş: asus-nb-wmi UX8407AA `key_wlan_event = ASUS_WMI_KEY_IGNORE` (2997606dd177, 7.1).

## Dokunmatik
- raydium_i2c_ts: HID-over-I2C cihazlarını atlayan upstream patch yok. Emsal: 65299e8bfb24 "Input: elants_i2c - do not bind to i2c-hid compatible ACPI instantiated devices" (_CID + HID _DSM kontrolü). İlgili oops raporları: Muhammad Bilal (2026-07-28), Pooyan Azad v2 (2026-09-28).

## ISH
- loader.c arama sırası (7.0+, aile desteği 043251b2dd1c): vendor/family/name/sku CRC32 kombinasyonları. Bu makinede: ASUS=59b8d9f2, "Zenbook Duo"=f26dba0f, "Zenbook Duo UX8407AA"=c68ec386, SKU ""=00000000.
- ASUS paketi: SensorHub_DCH_Intel_Z_V5.8.62.0_48536.exe (SHA-256 735a2915…), imaj `AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin` (SHA-256 e031f54f…). linux-firmware'de ASUS imajı yok.

## asus-wmi
- Screenpad maske düzeltmesi: Denis Benato serisi, pdx86 review-ilpo-next (159e956fd4f9, 341b4769f5cf, 99215e618ff2, 854be60ed0e9), 7.4 bekleniyor. Duo'da cihaz anlamsız (asusctl #25).
- asus-armoury: tabloda hiçbir Zenbook (UX) modeli yok. DSDT, PPT WMI ID'lerini (0x001200A0/A3) zaten uygulamıyor; güç limitleri DTT/RAPL üzerinden yönetiliyor.

## Topluluk
- scrambletools/zenbook-duo-omarchy (UX8407AA, Hyprland), alesya-h (UX8406MA), Fmstrat (UX8406CA), zakstam (Rust, USB+BT arka ışık), therealarnold666 (xe PHY B patch'i), takip: OpenGamingCollective/asusctl#25.
- Bluetooth: klavye her eşleştirme modunda yeni adres alıyor. Eşleştirmeyi laptop tarafından yapın: `bluetoothctl scan le` → pair/trust/connect; eşleştirme modu F11/Bluetooth tuşu, passkey klavyede yazılır.
