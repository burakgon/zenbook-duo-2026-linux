# ASUS Zenbook Duo UX8407AA: Linux Donanım Tarama Raporu

Tarih: 2026-10-04. Tarama 7.3.0-rc5-1-cachyos-rc üzerinde yapıldı; 7.2.9-1-cachyos boot kayıtları da (journal boot -3/-2/-1) incelendi.
Ham veriler: `hardware-scan/` (ACPI tabloları, DTT veri kasası, thermald dökümü). Tekrar üretmek için: `./duo scan --acpi`.

## 1. Donanım özeti

| Bileşen | Model | Sürücü | Durum (7.3-rc5) |
|---|---|---|---|
| CPU | Core Ultra X9 378H (Panther Lake-H, 4P + 8E + 4LP-E, 16C/16T, max 5.0 GHz) | intel_pstate (HWP/EPP), hybrid capacity scaling | ✅ |
| iGPU | Arc B390 (Xe3, 8086:b080), display ver. 30 B0, DMC 2.36, GuC 70.72.1 | xe | ⚠️ DSB/PSR hataları |
| NPU | Intel NPU 5 (8086:b03e) | intel_vpu, fw 2026-08-20 | ✅ |
| Ekranlar | 2× BOE NB140B9M (T01 üst / T02 alt), 14", 2880×1800, 48–144 Hz VRR, 10-bit, HDR (BT.2020 PQ), 500 nit (tam ekran), 1060 nit (%10 alan), OLED | xe eDP-1 / eDP-2 | ⚠️ 6-bit çıkış (Bölüm 3.4) |
| Dokunmatik (üst) | Raydium HID-over-I2C, ACPI TPL0 `RAYD0001` (`_CID PNP0C50`) | **yanlış: raydium_i2c_ts** | ❌ ölü + Oops |
| Dokunmatik (alt) | Raydium 2386:8C06, ACPI TPLX `RAYD0002` | i2c_hid_acpi + hid-multitouch (+ stylus) | ✅ |
| Klavye (takılı) | Primax 0b05:1cd7 (USB, pogo pin), BT modunda 0b05:1cd8 | **hid-generic** (+ touchpad: hid-multitouch) | ⚠️ arka ışık ve ASUS Fn tuşları yok |
| ASUS HID (I2C) | ACPI HPTC, 0b05:1b4c, vendor page 0xff31, rapor 0x5a | hid-generic | ❓ işlevi henüz bilinmiyor |
| Sensör hub | Intel ISH (8086:e445) → ivmeölçer, ALS, menteşe | intel_ish_ipc | ❌ firmware → ✅ (modül uygulandı) |
| Kamera | ASUS FHD (13d3:52b9) UVC: 1080p RGB + 640×400 IR + HID "prox/attention" sensörü | uvcvideo, hid-sensor-prox | ✅ (IR/Hello: yapılacak) |
| Ses | SOF PTL + SoundWire: 2× CS35L56 amfi (link 2), CS42L43 kodek (link 3) | sof-audio-pci-intel-ptl, sof_sdw (fonksiyon topolojileri) | ✅ 7.3 / ❌ 7.2.9 |
| Wi-Fi | Intel BE201 (Wi-Fi 7, 320 MHz, MLO), fw 107 | iwlwifi + iwlmld | ✅ (6 GHz/320 MHz, 3.8 Gbps) |
| Bluetooth | Intel CNVi (btintel_pcie), fw 214-29.26 | btintel_pcie | ✅ |
| Depolama | Micron 2600 2 TB (DRAM'siz, HMB 16 MB), fw V9MA002 | nvme, APST açık | ✅ (14 güvensiz kapanma kaydı) |
| Bellek | 32 GB LPDDR5X-9600 (Samsung) | zram 30 GB zstd, MGLRU | ✅ |
| USB4/TB | 2 port, iki TB domain, user güvenlik + IOMMU DMA koruması | thunderbolt, boltd | ✅ |
| Pil | 99 Wh, 2 döngü | BAT0, `charge_control_end_threshold` | ✅ (limit %100) |
| Termal/güç | DTT (INTC10D4), SoC Power Slider, asus-wmi platform profile | int3400, processor_thermal | ❌ → ✅ (thermald) |
| Firmware | BIOS UX8407AA.310 (2026-07-08), EC 3.4, ME 21.0.2.1482 | fwupd: sadece UEFI dbx güncellemesi var | ✅ |

## 2. 7.2.9 neden açılmıyor / çöküyor?

7.2.9 ile yapılan üç boot'un tamamında üç ayrı sorun var:

1. **Ses kartı hiç oluşmuyor** (her boot'ta): BIOS, SoundWire link 3'te gerçek CS42L43'ün yanında fiziksel olarak bulunmayan bir **Realtek RT722** kodeği de listeliyor (`link 3 mfg_id 0x025d part_id 0x0722`). 7.2.9 her ikisi için DAI link üretiyor ve kayıt şu hatayla çöküyor: `sysfs: cannot create duplicate filename '…/sof_sdw/SDW3-Playback-SimpleJack'` → `sof_sdw: probe … failed with error -12`.
   - Upstream çözüm: `ca02ffd4975c soundwire: dmi-quirks: Disable ghost Realtek on Asus Zenbook Duo` (Cirrus Logic'ten Charles Keepax, UX8407AA için). 7.3'e girmiş, `Cc: stable` etiketi olmadığı için 7.2.y'ye backport edilmemiş.
   - Bizim çözüm: `audio-ghost-rt722` modülü (DKMS, sadece 7.2.x için `soundwire-intel` + quirk). **Uygulandı.**
2. **Siyah ekran** (boot -2, -1): `plymouth-quit.service: start operation timed out`. Plymouth, xe sürücüsünde takılıyor ve DRM master'ı bırakmıyor. kwin `Failed to open /dev/dri/card0 (Device or resource busy)` → `No suitable DRM devices` ile kapanıyor. Her iki boot'ta da Apple Studio Display (TB3 DP tüneli) bağlıydı. Boot -3'te aynı ekran bağlıyken plymouth sorunsuz kapandığı için sorun aralıklı (bir yarış durumu).
3. **Uykuda donma** (boot -3): `Timed out waiting PSR idle state` → `WARNING drm_vblank.c:1329 vblank wait timed out on crtc 0` (intel_enable_crtc) → `intel_psr_resume`/`intel_set_cdclk` içinde WARN → `PM: suspend entry (s2idle)` ve sistem bir daha uyanmıyor. Ardından `plane 5A fault` ve `DSB 0 poll error` hataları.
   - 7.2 → 7.3-rc5 arasında ekran tarafında 279 commit var. Panther Lake'e özgü düzeltmelerin bir kısmı 7.2.9'a backport edilmemiş: DSB safe window (b201029ca6, 4a68c7516c, f7140c7cef), PSR DC3CO (cd0121502c), stolen/FBC (0687ec06f5, f0cabcc880) vb.

Sonuç: Bu donanım için 7.3, 7.2'den belirgin şekilde daha olgun. 7.2.9 için ses düzeltildi; ekran tarafı için geçici çözümler hazırlanıyor (bkz. 3.1).

## 3. Bulgular (alt sistem bazında)

### 3.1 Ekran / xe
- `[CRTC:153:pipe A] DSB 0 poll error`: 7.3-rc5'te de sürekli (ortalama 4–5/dk, sadece ekran açıkken).
  - **Kök neden:** Upstream'de doğrulandı (xe #8564, #9253, #9296, #9385, #9258): üst panelde VRR açıkken v7.0'da gelen "VRR DC balance" özelliği. KDE'de eDP-1 VRR politikası "Always"tı (DSB'nin tek olası poll noktası `intel_vrr_check_push_sent()`).
  - **Düzeltme:** `c034e8a46e4c drm/i915/vrr: Disable DC balance by default` mainline'a 2026-10-03'te girdi (7.3-rc6), `Cc: stable # v7.0+`. 7.2.y kuyruğunda henüz yok. `kernel/patches/0002-…` olarak kaydedildi, 7.2.9 ve 7.3-rc5'e temiz uygulanıyor.
  - **Uygulanan geçici çözüm:** KDE VRR politikası her iki panelde "Automatic" yapıldı (VRR sadece tam ekran oyun/video). Ayrıca OLED'de düşük Hz titreşimini önler. Tamamen kapatmak için "Never", ya da `xe.enable_dsb=0`.
- Üst panelde Panel Replay Selective Update (Early Transport) aktif; alt panel kapalı.
- `Selective fetch area calculation failed in pipe A` (7.2.9).
- `not enough stolen space for compressed buffer (need 27525120 more bytes)`: 27.525.120 bayt, 2560 piksel genişliğinde bir plane'in (Studio Display'in bir yarısı/tile) sıkıştırılmış buffer boyutu, yani eDP panelleriyle ilgili değil. FBC sadece o plane için atlanıyor, zararsız.
- 7.2.9 + Studio Display çökmesi bilinen örüntüyle birebir aynı (xe #9253, #9385): PSR idle timeout → `intel_psr_resume` WARN, plane fault, FIFO underrun. Muhtemel yol: 5K ekran CDCLK'yi yükseltiyor, `intel_set_cdclk()` PSR'yi duraklatıyor, duraklatma 2 sn'de zaman aşımına uğruyor. vblank WARN'ı 7.2-rc1'deki d08e46efae16'dan geliyor (#9449, düzeltme yok). Bekleyen seri: Jouni Högander'in "Selective fetch calculation fixes" (8 patch, 2026-09-29; 1/8 ve 4/8 stable etiketli). #9385'te `KWIN_DRM_NO_DIRECT_SCANOUT=1` sorunu tamamen önlemiş. İlgili: #9153 (Studio Display soğuk boot'ta siyah), #8991 (5K tile senkronu).
- `asus_screenpad` backlight değeri 130816/255: DSDT `0x00050032` için `parlaklık | 0xFF00 | 0x10000` döndürüyor, asus-wmi init'te maskelemiyor. Upstream düzeltme (Denis Benato) pdx86'da, 7.4 bekleniyor. Duo'da bu cihaz zaten anlamsız: alt panelin parlaklığı `card0-eDP-2-backlight`.
- Uyarı: drm/xe #9196 açık. eDP-2'nin yeniden etkinleştirilmesi PHY B'yi kilitleyebiliyor ("PHY B failed to request refclk"). Duo ekran yöneticisi bu nedenle temkinli tasarlanmalı.

### 3.2 Dokunmatik
- ACPI'de TPL0 açıkça HID-over-I2C (`_CID PNP0C50`, HID `_DSM` → descriptor 0x0001), ama `raydium_i2c_ts` `_HID RAYD0001` üzerinden cihazı alıyor:
  - libinput cihazı reddediyor: `kernel bug: device has min == max on ABS_X`. **Üst ekranda dokunma ve kalem tamamen ölü.**
  - Bu boot'ta: `Oops: general protection fault … RIP: raydium_i2c_irq+0x138` → kernel "Tainted: D".
- Çözüm: `touchscreen-hid` modülü (blacklist, **uygulandı**, yeniden başlatmada etkin) ve `kernel/patches/0001-…raydium…patch` (upstream'e gönderilebilir; elants_i2c'deki 65299e8bfb24 emsaline uygun).

### 3.3 Klavye
- 0b05:1cd7 → hid-generic. ASUS kontrol arayüzü interface 4'te (usage page 0xff31/0x76, rapor 0x5a). `hid-asus` ID tablosunda yok.
- hidraw ile doğrulandı: `ASUS Tech.Inc.` el sıkışması yankılanıyor, yetenek sorgusu `…08 01 21 41`, yani **byte[6]=0x01 → arka ışık destekleniyor**. `5A BA C5 C4 LL` (0–3) komutu kabul ediliyor.
- Rapor 0x5a girdisi Var olarak tanımlanmış (`09 76 … 81 02`), bu yüzden hid-asus tuşları eşleyemez; descriptor'ın Array'e (`19 00 2a ff 00 … 81 00`) çevrilmesi gerekiyor.
- Upstream: Pisati/Leivenzon/Jones serisi (0x1b2c/0x1b2d, 0x1bf2/0x1bf3, 0x1cd7/0x1cd8) build hatası nedeniyle düşürüldü. Rebecca Mara Müller'in UX8407AA patch'i (2026-08-11) beklemede. İkisi de mainline'da başka amaçla kullanılan BIT(15)'e çakışıyor.
- Fn tuş kodları (rapor 0x5a, byte 1): 0x10/0x20 parlaklık, 0xc7 klavye ışığı, 0x7c mikrofon, 0x6a ScreenPad, 0x9c ekran değiştir, 0x86 MyASUS, 0x5f ScreenXpert. Fn-lock: `5A D0 4E 01/00`.
- Klavye Bluetooth'ta eşleştirilmemiş: çıkarıldığında çalışmaz.

### 3.4 Görüntü kalitesi: 10-bit
- eDP-1, 2880×1800@144 Hz'de **bpp=18 (6 bit + dithering)** ile sürülüyor. HBR2×4 (17.28 Gbps efektif) 8 bpc'ye (20.4 Gbps) yetmiyor. Panel DSC destekliyor (RGB, 4 slice, 1/16 bpp) ama sürücü DSC yerine bpc'yi düşürmeyi seçiyor. Sink HBR3'ü de listeliyor ama `max_link_rate` 540000 ile sınırlı.
- Upstream genel "DP/eDP'de DSC'yi tercih et" değişikliğini reddetti (Imre Deak: güç ve DSC güvenilirliği). Birleştirilen 22931a311193 sadece DP→HDMI dönüştürücüleri kapsıyor ve eDP'de 6 bpc'ye düşme bilinçli olarak korunuyor. Modül parametresi yok.
- Seçenekler: (1) **KDE'de eDP-1 için HDR'ı açmak**, sürücüyü ≥30 bpp kullanmaya, yani DSC'ye zorlar (kodda doğrulandı); (2) yalnız eDP ile sınırlı 12 satırlık yerel patch; (3) `eDP-1/i915_dsc_fec_support`'a 1 yazmak (bir sonraki modeset'te geçerli, reboot'ta kaybolur). Risk: açık PTL hatası #8923 (2880×1800 DSC panellerde Panel Replay early transport ile bozulma). Sürücü, panelin "Panel Replay DSC support" yeteneğine göre PR/SU'yu kendisi düşürüyor.

### 3.5 Güç / performans: en büyük kazanım
BIOS'taki Intel DTT veri kasası (GDDV, 3131 bayt, LZMA) çözüldü (`hardware-scan/dtt/`). Windows bu tabloları uyguluyor, Linux ise uygulamıyordu:

| DTT hedefi (Windows) | Koşul | PL1 min–max | PL2 | TCC offset |
|---|---|---|---|---|
| Whisper | Oem0=1 (asus-wmi quiet) | 20–30 W | 35 W | 11 |
| Standard / Default | Oem0=0 (balanced) | 28–42 W | 55 W | 8 |
| Performance | Oem0=2 | 45–55 W | 64 W | 3 |
| Stand_* | Oem3=7 (kickstand) | profile göre | — | — |
| Book1/Book2 | Oem3=8/9 | 15–30 W | 23–33 W | 8–11 |
| HOT | SEN1 ≥ 74 °C | 15–18 W | 18 W | 30 |
| MS | Ekran kapalı | 20–30 W | 35 W | 11 |

- Önceki durum: MMIO RAPL **PL1=20 W / PL2=30 W** sabitti; profil değişimi sadece `Notify(IETM, 0x88)` gönderiyordu ve dinleyen yoktu.
- `power-dtt` modülü (thermald --adaptive) **uygulandı ve doğrulandı**:
  - balanced → PL1 30→42 W'a kademeli çıkıyor, PL2 55 W, TCC 8
  - performance → ODV0=2, PL1 55 W, PL2 64 W, TCC 3
  - quiet → ODV0=1, PL1 30 W, PL2 35 W, TCC 11
- **Açık sorun:** Birleşik platform-profile arayüzü, asus-wmi'nin `quiet` ile Intel SoC slider'ın `low-power` seçeneklerinin kesişimini alıyor. Sonuçta yalnızca `balanced performance` kalıyor ve PPD'nin "power-saver" seçeneği sessiz fan modunu ve Whisper limitlerini **devreye sokamıyor** (sadece EPP=power oluyor). Çözüm: SoC slider'a `quiet` ekleyen kernel patch'i veya profil senkronizasyon servisi (yapılacak).
- Diğer: intel_lpmd (PTL için WLT ipuçları + SoC slider yönetimi) AC'de bilinçli olarak `min_perf_pct=50` yapıyor. EAS kapalı (intel_pstate aktif mod). Runtime PM büyük ölçüde iyi, NVMe'de L1.2 açık. Boştayken S0i2.0/2.1 ve PC10 residency'si iyi.

### 3.6 Sensörler: çözüldü
- linux-firmware'deki genel `ish_ptl.bin` imza nedeniyle reddediliyor (`cmd 2 failed 10`).
- ASUS'un UX8407AA için yayımladığı sürücü paketindeki `AsusSign_ishS_SI_CommonPTL_5.8.1.7779_V0018.bin` kernel'in aradığı adla (`ish_ptl_59b8d9f2_c68ec386.bin`) kuruldu ve **yeniden başlatmadan** canlı yüklendi. Gelen sensörler: `accel_3d`, `als`, `hinge` (menteşe/ekran/klavye açıları). iio-sensor-proxy: yön = normal, ışık ≈ 7 lux.

### 3.7 Diğer
- ACPI: `\_SB.AUDC` hem DSDT'de hem SSDT26'da tanımlı (AE_ALREADY_EXISTS, kozmetik); `_TRT` boş.
- `intel-hid INTC10CC: failed to get button capability`, `ucsi GET_CURRENT_CAM failed`: kozmetik.
- Wi-Fi: zaman zaman `missed beacons exceeds threshold` ve MLO `association timed out` (AP tarafı da olabilir).
- UFW, LLMNR/mDNS/IGMP ve 8009 portunu (Chromecast) engelliyor. Donanım dışı, bilgi amaçlı.

## 4. Modül durumu ve yol haritası

| Öncelik | Modül | Durum |
|---|---|---|
| P0 | `touchscreen-hid`: üst dokunmatik + kalem | ✅ uygulandı (reboot) + kernel patch |
| P0 | `audio-ghost-rt722`: 7.2.x ses | ✅ uygulandı (DKMS, 7.2.9 için derlendi) |
| P0 | `sensors-ish-firmware`: döndürme/ALS/menteşe | ✅ uygulandı, canlı çalışıyor |
| P0 | `power-dtt`: Windows güç tabloları | ✅ uygulandı, doğrulandı |
| P0 | DSB hataları: VRR → Automatic (KDE) | ✅ uygulandı; kalıcı düzeltme 7.3-rc6 / 7.2.y stable |
| P0 | `display-xe-*`: 7.2 + harici 5K ekranda siyah ekran/uyku donması | 🔄 geçici: 7.2'de harici ekranı login sonrası tak; `KWIN_DRM_NO_DIRECT_SCANOUT=1` seçeneği; asıl çözüm 7.3 |
| P1 | `keyboard-backlight`: arka ışık LED'i (udev → hid-asus) | ✅ uygulandı |
| P1 | `keyboard-hotkeys`: Fn tuşları (descriptor düzeltmesi, HID-BPF), Fn-lock, BT 0x1cd8 | 🔜 Fn tuş yakalama testi gerekli |
| P1 | `power-profile-sync`: power-saver → quiet + low-power | 🔜 |
| P1 | `duo-screen`: klavye tak/çıkar → alt ekran, duruş (menteşe) ile yerleşim | 🔜 (xe #9196'ya dikkat) |
| P1 | `keyboard-bluetooth`: eşleştirme yardımcısı | 🔜 |
| P2 | `display-10bit-dsc`: 144 Hz 10-bit | 🧪 deneysel |
| P2 | `asus-screenpad`: sahte backlight'ı devre dışı bırak (+ upstream patch) | 🔜 |
| P2 | `suspend`: s2idle doğrulama, S0i2.2 | 🔜 |
| P3 | `camera-ir-howdy`: IR yüz tanıma, `presence`: uzaklaşınca kilitle | 🔜 |
| P3 | `audio-speaker-eq`: hoparlör EQ (PipeWire filter-chain) | 🔜 |
