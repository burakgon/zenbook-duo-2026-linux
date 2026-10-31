# display-edp2-tcss

Makes the bottom screen work after the laptop was powered on (or restarted) with the keyboard lying on it. Without this, lifting the keyboard in such a boot fails to light the bottom screen and can freeze the whole system.

## The problem
- The bottom panel (eDP-2) is driven from display Port B. On Panther Lake that port's PHY is a C20 PHY inside the Type-C subsystem (TCSS), which has to be asked for power before the PHY answers its clock requests.
- Port B is not a Type-C port, so the xe driver never asks. The firmware does, but only when it lights the bottom panel at power-on, and it skips the panel while the keyboard covers it.
- After such a power-on, the first enable of eDP-2 fails (`PHY B failed to request refclk`, `Failed to bring PHY B to idle`, `Port B PLL not locked`, `Timeout waiting for DDI BUF B to get active`); every later commit on pipe B times out, or the machine hangs. The state survives warm reboots until a full power reset. Upstream: [xe #9196](https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/9196); the patch was sent to intel-gfx / intel-xe as an [RFC](https://lore.kernel.org/all/20261006-ptl-port-b-tcss-v1-1-240670342cd3@gmail.com/) on 2026-10-06 and as a [two-patch v2](https://lore.kernel.org/all/20261015-ptl-port-b-tcss-v2-0-e00ce882402d@gmail.com/) on 2026-10-15.

## What it changes
- Builds a patched `xe.ko` with DKMS for every installed 7.x kernel (`zenbook-duo-xe`, installed to `/usr/lib/modules/<kernel>/updates/dkms/`), adds `/etc/mkinitcpio.conf.d/zenbook-duo-xe.conf` (`MODULES+=(xe)`: the `kms` hook only picks GPU drivers from `kernel/drivers/gpu/drm/` and would leave the patched one out) and rebuilds the initramfs.
- `dkms/patches/0001-…` and `0002-…` are the upstream series (v2):
  - `0001-…` serializes the Panther Lake TCSS mailbox (workaround 14020908590) with a display-wide lock. It is shared by all ports, and until now only each Type-C port's own lock covered it.
  - `0002-…` requests TCSS power for a non-TC C20 PHY on Panther Lake (port B) before the PHY clocks are programmed, the same way the driver already does for Type-C ports (including that mailbox workaround). It releases the request once the PLL is disabled and waits for the TCSS power state to follow in both directions. With the panel off (keyboard docked), the hardware is in the same state as with the stock driver.
  - Nothing else in xe changes.
- `0003-…` only adds the `zenbook_duo_edp2_tcss` module parameter (an off switch, and the marker `desktop-kde-duo` looks for); it is not part of the upstream submission.
- `dkms/build.sh` takes the driver sources of the exact kernel being built for: a sparse clone of `drivers/gpu/drm/{xe,i915}` from the tree the kernel package was built from (CachyOS: `github.com/CachyOS/linux` tag `cachyos-<version>-<pkgrel>`, e.g. `cachyos-7.3.0-3` for `7.3.0-3-cachyos`; Arch: `archlinux/linux` `v<version>-archN`; otherwise kernel.org stable), cached in `/var/cache/zenbook-duo/xe-src`. Building takes about a minute after each kernel update. If the clone or the build fails, the stock xe stays in use and `desktop-kde-duo` keeps protecting the bottom panel.
- Installs the pacman hook `/etc/pacman.d/hooks/65-zenbook-duo-xe-sources.hook`. CachyOS's pacman runs hooks, the DKMS one included, without network access. This hook asks for it (`NetworkAccess = allowed`; the line is left out for a pacman that does not know the option, such as Arch's 7.1, which runs hooks with network) and downloads a new kernel's sources into the cache right before the DKMS hook builds, so the build itself never needs the network.
- Installs packages if missing: `git`, `patch`, `pahole`, and `clang`, `llvm`, `lld` for clang-built kernels.
- `desktop-kde-duo` sees the patched driver (`/sys/module/xe/parameters/zenbook_duo_edp2_tcss`) and lets the bottom panel turn on after a docked power-on.

## Check
```sh
./duo status display-edp2-tcss
cat /sys/module/xe/parameters/zenbook_duo_edp2_tcss    # Y = patched xe running
dkms status zenbook-duo-xe
journalctl -k -b | grep -E 'PHY B|DDI BUF B|TCSS'      # should be empty
```

## Undo
`sudo ./duo revert display-edp2-tcss`, then reboot. The initramfs is rebuilt with the stock xe. To turn the fix off for a single boot, add `xe.zenbook_duo_edp2_tcss=0` to the kernel command line.

## Notes
- 7.3 does not have the fix (v2 is still waiting for review); the patches apply to 7.3.0 unchanged (DKMS 1.4).
- v2 (DKMS 1.3) verified on 2026-10-15 (7.2.9-2-cachyos, BIOS 310):
  - Power-on with the keyboard docked, then lifting it.
  - The bottom panel turned off and on from KScreen twice.
  - s2idle with the panel on.
  - No PHY B or TCSS messages. `PORT_BUF_CTL1_B` shows the TCSS power state following the request in both directions.
- Verified on 2026-10-06 (7.2.9-1-cachyos): docked power-on, then undock, dock and undock again, and a suspend and resume with the panel on, with no PHY B messages; `PORT_BUF_CTL1_B` shows the request acknowledged while the panel is on and released while it is off, and Port B's clock control reaches the same state as Port A's. It also recovered a boot that followed a failed eDP-2 enable on the stock driver. The Ubuntu project for the same laptop validated a broader version (TCSS request held, plus pipe B DSB/FlipQ off and diagnostics; by their notes the TCSS request is what fixed it); this module keeps only the TCSS request.
- The module is unsigned, like the other DKMS modules here; the kernel is marked tainted (`O`, `E`).
