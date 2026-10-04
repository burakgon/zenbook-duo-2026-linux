# zenbook-duo-linux

ASUS Zenbook Duo **UX8407AA** (2026, Intel Panther Lake) için modüler Linux donanım yama sistemi.
Her donanım düzeltmesi kendi başına uygulanabilen, durumu denetlenebilen ve tek komutla geri alınabilen ayrı bir **modüldür**.

Hedef platform: CachyOS (Arch), Limine, KDE Plasma (Wayland), **stable kernel** (şu an `linux-cachyos` 7.2.x, ileride 7.3.x).
Ayrıntılı donanım analizi: [`docs/TARAMA-RAPORU.md`](docs/TARAMA-RAPORU.md) · Upstream kaynaklar: [`docs/ARASTIRMA-NOTLARI.md`](docs/ARASTIRMA-NOTLARI.md)

## Hızlı başlangıç

```sh
./duo list                    # modüller: gerekli mi, uygulandı mı
./duo status                  # her modülün sağlık kontrolü
./duo info power-dtt          # modül belgesi
sudo ./duo apply touchscreen-hid power-dtt
sudo ./duo apply --recommended
sudo ./duo revert power-dtt   # kaydedilen her değişikliği geri alır
./duo doctor                  # tüm makine için PASS/WARN/FAIL özeti
./duo scan --acpi             # tam tarama: hardware-scan/snapshots/<tarih>_<kernel>/
```

## Mimari

```
duo                     CLI (bash)
lib/common.sh           log, kernel sürüm karşılaştırma (rc < final), DMI, modül meta verisi
lib/actions.sh          işlem kaydı tutan yardımcılar + otomatik geri alma
modules/<id>/
  module.conf           ID, NAME, SEVERITY, RISK, KERNEL_MIN/KERNEL_MAX, DEFAULT, UPSTREAM
  apply.sh              idempotent uygulama (sadece lib/actions.sh yardımcılarını kullanır)
  status.sh             0 = sağlıklı, 1 = düzeltme gerekli
  files/, dkms/         kurulacak dosyalar, DKMS kaynakları
kernel/patches/         upstream'e gönderilebilir kernel patch'leri
tools/hw-scan.sh        tekrarlanabilir tarama + sağlık özeti (seri no/MAC/SSID maskelenir)
hardware-scan/          ACPI tabloları (DSDT/SSDT .dat + .dsl), DTT veri kasası, döküm
```

### Güvenlik modeli
- **Manifest:** `duo_install_file`, `duo_enable_unit`, `duo_pkg_install`, `duo_cmdline_add`, `duo_dkms_install` her işlemi `/var/lib/zenbook-duo/modules/<id>/manifest` dosyasına yazar. Var olan bir dosyanın üzerine yazılmadan önce yedeği alınır. `duo revert` manifest'i tersten oynatır; modüllerin elle yazılmış geri alma betiği yoktur.
- **Snapshot:** `apply`/`revert` öncesinde snapper snapshot'ı alınır. Limine bunları boot menüsüne ekler.
- **Kernel cmdline:** `/etc/default/limine` içinde işaretli bir blok olarak yönetilir, ardından `limine-update` çalıştırılır. Parametreler Limine menüsünden boot anında düzenlenebilir.
- **Kernel sürümü:** Modüller `KERNEL_MIN`/`KERNEL_MAX` ile sınırlanır. Örneğin 7.3'te upstream'e girmiş bir düzeltme 7.2.x'te uygulanır, 7.3'te "n/a" görünür. DKMS paketleri de `BUILD_EXCLUSIVE_KERNEL` ile aynı aralığa kilitlidir.
- **initramfs:** Sadece gerektiğinde yeniden üretilir (initramfs'te yalnızca xe ve soundwire-bus var).

## Modüller

| Modül | Ne yapar | Kernel |
|---|---|---|
| `touchscreen-hid` | Üst dokunmatik ekranı (RAYD0001) raydium_i2c_ts yerine i2c-hid'e bırakır → dokunma + kalem, Oops biter | hepsi |
| `audio-ghost-rt722` | BIOS'taki hayalet RT722 kodeğini filtreler (upstream ca02ffd4975c backport'u, DKMS) → 7.2.x'te ses | < 7.3-rc1 |
| `sensors-ish-firmware` | ASUS imzalı PTL ISH firmware'i (ASUS sürücü paketinden indirip doğrular) → ivmeölçer, ALS, menteşe | hepsi |
| `power-dtt` | thermald --adaptive: BIOS'taki Windows DTT tablolarını uygular (PL1/PL2/TCC profil başına) | hepsi |
| `keyboard-backlight` | Klavyenin ASUS kontrol arayüzünü hid-asus'a bağlar → `asus::kbd_backlight` (0–3), KDE'den kontrol | hepsi |

## Yeni modül eklemek

```sh
mkdir -p modules/ornek
cat > modules/ornek/module.conf <<'EOF'
ID="ornek"
NAME="Kısa açıklama"
SUMMARY="Tek satır"
CATEGORY="power"; SEVERITY="minor"; RISK="low"; REBOOT="no"
KERNEL_MIN=""; KERNEL_MAX=""; DEFAULT="off"; UPSTREAM="-"
EOF
echo 'duo_write_file /etc/sysctl.d/90-zenbook-duo-ornek.conf <<<"vm.x = 1"' > modules/ornek/apply.sh
echo 'ok "çalışıyor"; return 0' > modules/ornek/status.sh
```
