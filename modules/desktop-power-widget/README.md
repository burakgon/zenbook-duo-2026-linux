# desktop-power-widget

A KDE panel widget that shows how many watts the laptop draws right now; click it for a breakdown, temperatures, fans, the power mode and battery health.

## The problem
- KDE shows the battery percentage, but not how much power the laptop is drawing or what draws it.
- The processor's energy counters (Intel RAPL) are readable only by root, so no regular tool can show the breakdown.

## What it changes
- Installs packages if missing: `gcc`, `pkgconf`, `qt6-base`, `qt6-declarative`.
- Builds a small QML plugin from `src/powermonitor.cpp` into `/usr/lib/qt6/qml/org/zenbookduo/power/` (with its `qmldir`).
- Installs the widget "Zenbook Duo Power" into `/usr/share/plasma/plasmoids/org.zenbookduo.power/`.
- Installs `/etc/udev/rules.d/70-zenbook-duo-rapl.rules`: the RAPL energy counters (`intel-rapl:0*`) become readable for the `wheel` group only (they stay closed for other users because of CVE-2020-8694).
- Add it to a panel: right-click the panel > Add or Manage Widgets > "Zenbook Duo Power". No reboot needed.

What the widget shows:
- **Panel:** on battery, the whole laptop's draw measured by the battery fuel gauge; plugged in, processor + memory (the total cannot be measured on AC).
- **Popup:** time left or time to full, the breakdown (processor cores, graphics and the rest of the chip, memory, and everything else: screens, Wi-Fi, SSD, keyboard, power losses), processor/SSD/Wi-Fi temperatures, fan speeds, power mode buttons (Quiet / Balanced / Performance, same as KDE's power profiles), battery health, cycles and charge limit.

Cost: it reads a few small sysfs files every 2 s while it sits in the panel and every 1 s while the popup is open, inside plasmashell, without starting any process. The processor's "psys" platform counter is not used: on this model it reads about twice the real battery drain.

## Check
```sh
./duo status desktop-power-widget
cat /sys/class/powercap/intel-rapl:0/energy_uj      # must work as your user for the breakdown
```

## Undo
`sudo ./duo revert desktop-power-widget`, then remove the widget from the panel.
