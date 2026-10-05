# system-health

Tells you when one of the fixes is not active, instead of letting it fail silently.

## The problem
- Two fixes are kernel modules built by DKMS. If a build fails on a new kernel, or a new kernel series is not covered yet (the keyboard fix has sources for 7.2 and 7.3), the stock driver loads and the fix is simply gone.
- Sound, sensors and the keyboard driver can also fail to come up for other reasons, and nothing tells you.

## What it changes
- Installs `/usr/lib/zenbook-duo/duo-health`.
- Installs the pacman hook `/etc/pacman.d/hooks/95-zenbook-duo-kernel-check.hook`. After a kernel is installed or upgraded (after the DKMS hook has run), it lists every installed kernel the DKMS fixes did not build for, and tells you when the audio fix is no longer needed on any installed kernel.
- Installs the user unit `/etc/systemd/user/zenbook-duo-health.service`, enabled for every user (`systemctl --global`). Once per login, 20 s after the desktop starts, it checks the sound card, the accelerometer and (with the keyboard docked) that the keyboard uses the patched `hid-asus` driver. Each problem becomes a desktop notification; when everything works it stays silent.
- Nothing stays running: the hook runs only during pacman transactions, the login check runs once and exits.

## Check
```sh
./duo status system-health
/usr/lib/zenbook-duo/duo-health --kernels     # what the pacman hook would print
/usr/lib/zenbook-duo/duo-health --login       # the login check, now
```

## Undo
`sudo ./duo revert system-health`

## Notes
- The bottom-screen (eDP-2) kernel bug is watched by `desktop-kde-duo`, which can also react to it; `./duo doctor` reports it too.
