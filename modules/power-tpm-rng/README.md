# power-tpm-rng

Stops the kernel from polling the firmware TPM for random numbers about 20 times per second.

## The problem
- The kernel's hardware random number thread reads the firmware TPM (fTPM) about 20 times per second to feed the entropy pool. Each read wakes the fTPM/CSME and costs idle power.
- The kernel does not need it: entropy keeps coming from the CPU (RDRAND/RDSEED) and jitter.

## What it changes
- Installs `/etc/udev/rules.d/90-zenbook-duo-hwrng.rules`, which sets `rng_current` of `hw_random` to `none`.
- Writes `none` to `/sys/class/misc/hw_random/rng_current` right away. No reboot is needed.

## Check
```sh
./duo status power-tpm-rng
cat /sys/class/misc/hw_random/rng_current   # should print none
```

## Undo
`sudo ./duo revert power-tpm-rng`, then reboot so the kernel picks its default hardware RNG source again.

## Notes
- Works on all kernels.
- Only the entropy polling stops; the TPM itself keeps working.
