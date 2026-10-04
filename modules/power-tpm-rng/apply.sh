# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/90-zenbook-duo-hwrng.rules" /etc/udev/rules.d/90-zenbook-duo-hwrng.rules
echo none >/sys/class/misc/hw_random/rng_current
