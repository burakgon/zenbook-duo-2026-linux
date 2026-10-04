## Sorun

`display-dpcd-backlight` ile xe her OLED panele kendi donanım parlaklığını verir:

| sysfs | panel |
|---|---|
| `intel_backlight` | eDP-1 (üst) |
| `card0-eDP-2-backlight` | eDP-2 (alt) |

KDE bunları tek ekran gibi ele alır (KDE bug 525717):

- PowerDevil'in yardımcısı (`backlighthelper`) iki cihazı da bulur ama tek "Built-in Screen" olarak sunar ve aynı değeri ikisine birden yazar.
- KWin bu tek cihazı ilk dahili çıkışa (eDP-1) bağlar. eDP-2'ye donanım cihazı kalmadığı için onun kaydırıcısı **yazılımsal karartma** olur.

Sonuç: üst kaydırıcı iki panelin donanım parlaklığını birlikte değiştirir, alt kaydırıcı ise bunun üstüne alt panelin görüntüsünü yazılımla karartır. Alt paneli kısıp sonra üstü kısınca alt panel ikisinin çarpımı kadar kararır.

## Düzeltme

İki küçük yama var, ikisi de upstream'e gönderilebilir. Yalnızca birden fazla dahili panel olduğunda davranış değişir:

- `patches/powerdevil.patch`: Arka ışıkların her biri ayrı bir etkin eDP bağlantısına aittir (sysfs `type=raw`, `device/enabled`). Böyle birden fazla arka ışık varsa yardımcı, eylemlerine (`brightness`, `brightnessmax`, `setbrightness`, `syspath`) isteğe bağlı bir `device` argümanı alır. Daemon her panel için ayrı bir parlaklık cihazı oluşturur ve panelin EDID'sini ekler. Tek panelli makinelerde hiçbir şey değişmez.
- `patches/kwin.patch`: Dahili çıkış, EDID'si verilmiş bir parlaklık cihazıyla EDID üzerinden eşleştirilir. EDID'si olmayan cihaz, önceden olduğu gibi herhangi bir dahili çıkışa bağlanabilir.

Sonuç olarak her panelin kaydırıcısı kendi donanım parlaklığını sürer ve yazılımsal karartma yoktur. Parlaklık tuşları her iki paneli aynı oranda değiştirir (KDE'nin çoklu ekran davranışı).

## Paketleme

`build-pkg.sh` kurulu sürümün Arch PKGBUILD'ini (aynı etiket) alır, yamayı ekler ve **kurulu pkgrel'i korur** (`Packager: zenbook-duo-linux`). Derleme bağımlılıkları geçici olarak kurulur, derlemeden sonra kaldırılır. Paketler `/var/cache/zenbook-duo/packages` içinde saklanır.

Depodan yeni bir kwin/powerdevil sürümü geldiğinde yamalı paket normal bir güncelleme gibi değiştirilir, yani güncelleme engellenmez ve sistem kırılmaz. Bu durumda pacman hook'u uyarır. O zaman alt panel yeniden yazılımsal karartmaya döner; yeniden derlemek için:

```sh
sudo ./duo apply display-brightness-per-panel
```

`duo revert display-brightness-per-panel` depo paketlerini yeniden kurar.
