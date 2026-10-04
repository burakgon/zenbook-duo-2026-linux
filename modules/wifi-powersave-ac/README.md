# wifi-powersave-ac

Turns Wi-Fi power saving off while on AC power for lower latency, and keeps it on while on battery.

## The problem
- Wi-Fi power saving is always on. With it on, the average ping to the router was 16 ms, with spikes up to 158 ms; with it off, 7 ms and no spikes.
- On battery the power saving is worth keeping, so the setting should follow the power source.

## What it changes
- Installs `/usr/lib/zenbook-duo/zenbook-duo-wifi-ps`, which sets `iw ... set power_save off` on every wireless interface when a mains adapter is online, and `on` otherwise.
- Installs `/etc/udev/rules.d/90-zenbook-duo-wifi-ps.rules`, which runs that script when the AC adapter is plugged in or removed.
- Installs `/etc/NetworkManager/dispatcher.d/90-zenbook-duo-wifi-ps`, which runs it again on connect, DHCP change and connectivity change, because NetworkManager re-applies its own setting on every (re)connect.
- Runs the script once immediately. No reboot is needed.

## Check
```sh
./duo status wifi-powersave-ac
iw dev wlan0 get power_save   # off on AC, on on battery
```

## Undo
`sudo ./duo revert wifi-powersave-ac`. The current power save state stays until the next reconnect or reboot.

## Notes
- Works on all kernels. Needs `iw`.
