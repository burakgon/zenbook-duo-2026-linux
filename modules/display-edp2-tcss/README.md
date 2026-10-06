# display-edp2-tcss

Makes the bottom screen work after the laptop was powered on (or restarted) with the keyboard lying on it. Without this, lifting the keyboard in such a boot fails to light the bottom screen and can freeze the whole system.

## The problem
- The bottom panel (eDP-2) is driven from display Port B. On Panther Lake that port's PHY is a C20 PHY inside the Type-C subsystem (TCSS), which has to be asked for power before the PHY answers its clock requests.
- Port B is not a Type-C port, so the xe driver never asks. The firmware does, but only when it lights the bottom panel at power-on, and it skips the panel while the keyboard covers it.
- After such a power-on, the first enable of eDP-2 fails (`PHY B failed to request refclk`, `Failed to bring PHY B to idle`, `Port B PLL not locked`, `Timeout waiting for DDI BUF B to get active`); every later commit on pipe B times out, or the machine hangs. The state survives warm reboots until a full power reset. Upstream: [xe #9196](https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/9196).

## What it changes
- Builds a patched `xe.ko` with DKMS for every installed 7.x kernel (`zenbook-duo-xe`, installed to `/usr/lib/modules/<kernel>/updates/dkms/`), adds `/etc/mkinitcpio.conf.d/zenbook-duo-xe.conf` (`MODULES+=(xe)`: the `kms` hook only picks GPU drivers from `kernel/drivers/gpu/drm/` and would leave the patched one out) and rebuilds the initramfs.
- The patch (`dkms/patches/0001-…`) requests TCSS power for Port B before the PHY clocks are programmed, the same way the driver already does for Type-C ports (including the Panther Lake mailbox workaround 14020908590), and waits for the acknowledgement. It only acts on this board (DMI `UX8407AA`), on Port B with a C20 PHY. Nothing else in xe changes.
- `dkms/build.sh` takes the driver sources of the exact kernel being built for: a sparse clone of `drivers/gpu/drm/{xe,i915}` from the tree the kernel package was built from (CachyOS: `github.com/CachyOS/linux` tag `cachyos-<version>-<n>`; Arch: `archlinux/linux` `v<version>-archN`; otherwise kernel.org stable), cached in `/var/cache/zenbook-duo/xe-src`. Building takes about a minute after each kernel update. If the clone or the build fails, the stock xe stays in use and `desktop-kde-duo` keeps protecting the bottom panel.
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
- Validated by the Ubuntu project for the same laptop with a broader version of this change (TCSS request held on Port B; multiple cold boots, dock and undock, panel disable and re-enable). This module keeps only the TCSS request.
- The module is unsigned, like the other DKMS modules here; the kernel is marked tainted (`O`, `E`).
