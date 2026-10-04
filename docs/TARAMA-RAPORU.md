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

## 5. Yön ve dokunmatik (2026-10-04, 7.2.9 sonrası)
- İki panel de 180° ters takılı. KWin DRM `panel_orientation` özelliğini uygulamıyor; çekirdek parametresi denendi ve geri alındı.
- Çözüm: `sensors-accel-mount` (hwdb `ACCEL_MOUNT_MATRIX=-1,0,0;0,-1,0;0,0,1`). Laptop dik dururken sensör `bottom-up` raporluyor ve KWin otomatik döndürme ile `Rotated180` uyguluyor.
- Dokunmatik katman ters takılı değil (ham koordinatlar kullanıcının gördüğü yönde), ama KWin dokunuşları çıkış dönüşümüyle birlikte 180° çeviriyor. libinput kalibrasyon matrisi (`-1 0 1 0 -1 1`) KWin'de tüm dokunuşları tek noktaya topluyor, kullanılamaz. Çözüm: KWin'in aygıt başına yön ayarı `Orientation=8` + eşleme RAYD0001→eDP-1, RAYD0002→eDP-2 (`tools/kde-touch-setup.sh`, `~/.config/kcminputrc`).

## 6. Derin denetim (2026-10-04 gece, 7.2.9, AC'de)
**Güç**
- Boşta paket gücü 0,66–0,79 W (CorWatt 0,03, GFX 0,01, RAM 0,14). Dell XPS PTL raporlarıyla (sistem 1,4–1,5 W) aynı sınıfta. Ekran motoru DC6'ya giriyor, GT C6'da, NVMe 100 ms'de PS3'e, 2 sn'de PS4'e iniyor.
- `SysWatt` (psys) AC'de ve batarya doluyken anlamsız (~16–17 W, ekran kapatılınca değişmiyor). Gerçek ölçüm pildeyken `tools/power-measure.sh` ile yapılmalı.
- Ekran kapalıyken bile Pkg%pc10 ≈ %0 ve `slp_s0` artmıyor. Ölçüm sırasında Brave'de YouTube açıktı (ses akışı açık, pipewire-pulse ~94/s, xe vcs3). Gerçek boşta S0ix değerlendirmesi tarayıcı kapalıyken tekrarlanmalı.
- **TRM (termal vektör) kesmeleri:** YouTube oynarken ~640/s ölçüldü (HFI, HWP ve thermald kapatılarak test edildi, değişmedi). Tarayıcı kapatılınca 0/s oldu, yani çekirdek hatası değil, oynatma yükünün yan etkisi.
- Profiller (power-profile-sync ile): power-saver = Whisper (ODV0=1, PL1 30 W, PL2 35 W, TCC 11, EPP power, Xe power_saving); balanced = Standard (42/55 W); performance = 55/64 W, TCC 3.
- Balanced tam yük (16 iş parçacığı, 60 sn): ilk ~20 sn 55 W / 3,2 GHz / 93 °C, sonra thermald MSR PL1'i 30 W'a çekiyor (2,5 GHz, 80 °C). Throttle nedenleri: Thermal, PL1, PL2 log. Davranış Windows DTT pasif politikasıyla uyumlu. DTT sensörlerinden SEN1/3/4/6/7/8 0 °C okuyor (ACPI _TMP), SEN2 gerçek değer veriyor.
- intel_lpmd (PTL M204 config, WLT ipuçları) ve thermald birlikte çalışıyor; Omarchy/Dell de aynı kombinasyonu kullanıyor.

**Ekran**
- VRR "Never": Panther Lake eDP VRR'ı şu an bozuk (xe #8976 vmin'e sabitlenme, #9253/#9296 DSB/takılma, #9385). Bu boot'ta 0 DSB hatası.
- Panel Replay SU (Early Transport) aktif ve SLEEP durumuna giriyor. Alternatif `xe.enable_panel_replay=0 xe.enable_psr=1` (PSR1), takılma veya bozulma görülürse denenecek (xe #8923, #9119, Omarchy #11016: 7.2'de PR gecikmesi).
- Bilinen açık hatalar (bu model): xe #7764 (klavye takılıyken boot → eDP-2 flip_done timeout, LOBF), #9196 (PHY B refclk, ancak tam güç kesintisiyle düzeliyor), #8392.
- Parlaklık: ilk değerlendirme yanlıştı. PWM backlight değeri değişiyor ama panele ulaşmıyor; `xe.enable_dpcd_backlight=1` gerekiyor (bkz. bölüm 10).

**Ağ**
- BE201: 6 GHz/320 MHz MLO, −57 dBm, Rx 3,46 Gbps (EHT-MCS 8, NSS 2), Tx 1,73 Gbps (NSS 1). 7.2.9 firmware c106 yüklüyor (7.3: c107; c108 kernel'de desteklenmiyor).
- Güç tasarrufu açıkken ağ geçidi gecikmesi ortalama 16 ms / en fazla 158 ms, kapalıyken 7 ms. `wifi-powersave-ac` modülü eklendi.
- Boot sonrası mesh AP'ler arasında 2 roam, sonra kararlı. Omarchy, Dell için BE201'de EHT'yi kapatıyor (`disable_11be`); burada gerek yok, Tx NSS1 izlenecek.

**Ses / sistem**
- PulseAudio, pipewire-pulse'un yerine geçmişti (21:02, bizden önce). Geri alındı; tarayıcı/YouTube sorunu buydu.
- `hwrng` TPM'i saniyede ~20 kez okuyordu, kapatıldı (`power-tpm-rng`). Runtime PM, 10 platform PCI fonksiyonu için "auto" yapıldı (`power-runtime-pm`).

## 7. Dell XPS / Omarchy iddialarıyla karşılaştırma
| Başlık | Bu makinede |
|---|---|
| Panel Replay / PSR | ✅ PR + SU + Early Transport aktif, panel RFB'den gösteriyor, hata yok. A/B ölçüm: paket 1,06 W (PR) / 1,29 W (kapalı) |
| ALPM / LOBF | ✅ aux-less ALPM açık; LOBF kapalı (PR ile gerekmiyor) |
| DC5/DC6 | ✅ sayaçlar sürekli artıyor; boşta yalnız PW_A açık |
| FBC | ➖ SU etkinken devre dışı (beklenen, XPS'te de aynı) |
| VRR | ⚠️ upstream'de bozuk, bilinçli olarak "Never" |
| Ses | ✅ Cirrus CS35L56'ya ASUS'a özel tuning ve kalibrasyon yükleniyor (XPS'in gerektirdiği EQ katmanı burada firmware'de) |
| Kamera | ✅ UVC 1080p + IR (Windows Hello). XPS'in IPU7 sorunları bu makinede yok. IR yüz tanıma kurulmadı |
| NPU | ✅ intel_vpu + fw 2026-08-20; `intel-npu-driver` + Level Zero kuruldu, "Intel AI Boost" listeleniyor (kullanıcı `render` grubuna eklendi). CachyOS `openvino` paketi yalnız CPU eklentisi içeriyor; GPU/NPU için pip ile OpenVINO gerekir |
| GPU hesaplama | ✅ intel-compute-runtime: Level Zero + OpenCL (Intel ve rusticl) |
| Donanımsal video | ✅ intel-media-driver, libvpl, vpl-gpu-rt; VA-API H.264/VP9/AV1 |
| Wi-Fi 7 | ✅ (bkz. bölüm 6); EHT kapatma gerekmedi |
| lpmd + thermald | ✅ ikisi de çalışıyor; thermald Windows DTT tablolarını uyguluyor |
| ISH firmware | ✅ ASUS imzalı (Dell kendi imajını linux-firmware'e koymuş, ASUS koymamış) |
| LVFS/fwupd | ➖ ASUS BIOS'u LVFS'te yok, yalnız UEFI dbx güncellemesi var |
| FRED | ✅ çekirdekte etkin (`fred_sysvec_*` izleri) |

## 8. Anlık ters dönme + dokunmatiğin kaybolması (çözüldü)
- KWin, çıkışın dönüşü her değiştiğinde dokunmatik aygıtlarının yön ayarını sıfırlıyor. Hareket sırasında ivmeölçerin anlık yön değişiklikleri, otomatik döndürmeyi ("Always") tetikleyip ekranı bir an çeviriyor ve dokunmatiği bozuyordu.
- Çözüm: her iki çıkışta otomatik döndürme "InTabletMode" (cihazda tablet modu anahtarı yok, fiilen kapalı). Üst panel (eDP-1) ters takılı → sabit 180°; alt panel (eDP-2) düz takılı → 0° (kullanıcı doğruladı, ilk varsayım yanlıştı). Dokunmatik yönü: üst 8, alt 0. `kscreen-doctor` bu ayarı yapamadığı için `tools/duo-kscreen` (libkscreen) yazıldı: `duo-kscreen eDP-1 autorotate intabletmode rotation inverted`.
- Dokunmatik yön ayarı (Orientation=8) her oturum açılışında `~/.config/autostart/zenbook-duo-touch.desktop` ile yeniden uygulanıyor.
- Tablet/kitap kullanımı için ileride menteşe sensörüne dayalı kendi döndürme mantığımız (duo-screen) gerekecek.

## 9. duo-rotate (döndürme + çift ekran düzeni + dokunmatik)
- KWin'in otomatik döndürmesi bu cihaza uygun değil: paneller birbirine göre 180° farklı takılı, KWin her çıkışı aynı yöne çeviriyor, panelleri yeniden yerleştirmiyor, her dönüşte dokunmatik yönünü sıfırlıyor ve sensörün her okumasına anında tepki veriyor.
- `tools/duo-rotate` (Qt/libkscreen kullanıcı servisi, `~/.config/systemd/user/duo-rotate.service`):
  - klavye USB'den takılıyken (0b05:1cd7) laptop pozisyonu sabit; ayrıyken iio-sensor-proxy yönü ≥1 sn sabit kalınca uygulanır;
  - üst = sensör yönü (inverted/none/left/right), alt = üst + 180°; menteşeye göre alt alta veya yan yana yerleşim;
  - her ekran düzeni değişiminden sonra dokunmatik eşlemesini (üst yön 8, alt 0) yeniden uygular;
  - KWin'in otomatik döndürmesini kapatır (policy Never).
- Kullanıcı tarafından doğrulandı: laptop pozisyonu, dik (book) mod ve dokunmatik.

## 10. Parlaklık
- Paneller parlaklığı yalnız AUX/DPCD ile kabul ediyor (DPCD 0x701=0x99, 0x702=0x86). `display-dpcd-backlight` → `xe.enable_dpcd_backlight=1`, aralık 0–504. İki panel de sysfs düzeyinde bağımsız kontrol edilebiliyor; 22 hızlı değişiklikle (PR açık ve kapalı) donma yok.
- KDE sınırlaması (bug 525717): PowerDevil backlighthelper iki parlaklık cihazını tek "Built-in Screen" olarak sunuyor ve aynı değeri ikisine birden yazıyor. KWin bu tek cihazı ilk dahili çıkışa (eDP-1) bağladığı için alt ekranın kaydırıcısı yalnızca yazılım karartması oluyor. Sonuç: üst kaydırıcı iki panelin donanım parlaklığını değiştiriyor, alt kaydırıcı alt panele ek karartma uyguluyor.
- Düzeltme `display-brightness-per-panel`. PowerDevil yaması: her panelin arka ışığı ayrı bir parlaklık cihazı olur ve panelin EDID'sini taşır. KWin yaması: dahili çıkışlar bu cihazlarla EDID üzerinden eşleşir. Paketler kurulu sürümün Arch PKGBUILD'inden derleniyor. Doğrulama: KDE'de eDP-1 %60'a çekildiğinde yalnız `intel_backlight` değişti (397→303), eDP-2 için yalnız `card0-eDP-2-backlight` değişti; iki çıkışta da yazılım karartması %100. duo-rotate'teki geçici "alt panel karartmasını %100'de tut" kodu kaldırıldı.
- Parlaklık tuşlarıyla yaşanan bir donmanın nedeni bulunamadı; lockup detector + pstore ile yakalanmaya hazır (bkz. oturum notları).
