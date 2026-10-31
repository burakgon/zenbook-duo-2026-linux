# wifi-roam-deauth

Makes Wi-Fi roaming work on WPA3 networks whose access points keep state across bands, such as Wi-Fi 7 mesh units that run one access point per band. Without this, the laptop's move from 5 GHz to 6 GHz on the same unit times out every time, and it ends up on a weak distant node for a few minutes.

## The problem
- When wpa_supplicant roams, mac80211 drops the old association locally ("disconnect from AP … for new auth") and does not send a Deauthentication frame to the AP it leaves.
- With WPA3 the connection uses management frame protection (PMF/MFP). The AP still holds the protected association and has to treat a new (re)association from the same station as possibly forged. It first checks the old association with an SA Query, which the laptop no longer answers. Only after that query times out (about 1 s) does the AP accept the laptop again.
- mac80211 waits 100 ms for each of its three (Re)Association Request frames, so it gives up long before that.
- Seen with a TP-Link Deco BE65/BE85 mesh (Qualcomm) and the Intel BE201 (iwlmld). Even with "MLO network" off, each Deco runs a separate single-link AP MLD per band (5 GHz `a6:…`, 6 GHz `ce:…`) and steers clients from 5 GHz to 6 GHz with 802.11v.
  - Each of 10 roams between the two MLDs of one unit over nine days timed out.
  - In each one, the Deco acknowledged all three Reassociation Requests and answered none, then rejected the fallback to the old MLD with reason 9.
  - Reassociating with the current AP got reason 9 right away.
  - The punktfunk stream dropped to 17–37 fps on every such roam, and round trip p95 rose from ~8 ms to ~25 ms on the fallback node.

## What it changes
- `dkms/patches/0001-…` is the upstream patch ([sent to linux-wireless](https://lore.kernel.org/all/20261015-mac80211-roam-mfp-deauth-v1-1-9ccc69b434fd@gmail.com/) on 2026-10-15): when PMF is in use, mac80211 transmits the Deauthentication frame to the AP it leaves. That covers WPA3, every 6 GHz network and every MLO connection. Without PMF nothing changes. With the deauthentication the Deco drops the old association at once, and roams finish with the first Reassociation Request, answered within 75 ms.
- `0002-…` only adds the `zenbook_duo_roam_deauth` module parameter: a runtime off switch, and the marker `status.sh` looks for. It is not part of the upstream submission.
- `dkms/build.sh` builds a patched `mac80211.ko` with DKMS for every installed 7.x kernel (`zenbook-duo-mac80211`, installed to `/usr/lib/modules/<kernel>/updates/dkms/`).
  - It uses the `net/mac80211` sources of the exact kernel being built for, taken from a sparse clone of the tree the kernel package was built from. The clone is cached in `/var/cache/zenbook-duo/mac80211-src`.
  - The build takes about 10 seconds.
  - If the clone or the build fails, the stock mac80211 stays in use.
  - mac80211 is not in the initramfs, so no initramfs rebuild is needed.
- Installs the pacman hook `/etc/pacman.d/hooks/65-zenbook-duo-mac80211-sources.hook`. CachyOS's pacman runs hooks, the DKMS one included, without network access. This hook asks for it (`NetworkAccess = allowed`; the line is left out for a pacman that does not know the option, such as Arch's 7.1, which runs hooks with network) and downloads a new kernel's `net/mac80211` into the cache right before the DKMS hook builds.
- Installs packages if missing: `git`, `patch`, `pahole`, and `clang`, `llvm`, `lld` for clang-built kernels.

## Check
```sh
./duo status wifi-roam-deauth
cat /sys/module/mac80211/parameters/zenbook_duo_roam_deauth   # Y = patched mac80211 running
dkms status zenbook-duo-mac80211
journalctl -k -b | grep -E 'disconnect from AP|timed out|Reason: 9'
```
A good roam is a `disconnect from AP …` line followed by a single `associate with … (try 1/3)` and `RX ReassocResp … status=0`.

## Undo
`sudo ./duo revert wifi-roam-deauth`, then reboot. To turn the change off without a reboot: `echo 0 | sudo tee /sys/module/mac80211/parameters/zenbook_duo_roam_deauth`.

## Notes
- 7.3 does not have the fix (no review yet); the patches apply to 7.3.0 unchanged (DKMS 1.1).
- Verified on 2026-10-15 (7.2.9-2-cachyos) with an experimental build that had a runtime switch for the deauthentication and for the response wait:
  - Without the deauthentication, the Deco ignored Reassociation Requests sent 0 and 500 ms after the first one and answered one sent after 1 s.
  - With the deauthentication, the 6 GHz → 5 GHz roam on one unit, roams between units and reassociations with the current AP all completed on the first attempt in 64–74 ms.
- The module is unsigned, like the other DKMS modules here; the kernel is marked tainted (`O`, `E`).
