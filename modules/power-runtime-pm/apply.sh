# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/90-zenbook-duo-runtime-pm.rules" /etc/udev/rules.d/90-zenbook-duo-runtime-pm.rules
udevadm control --reload
udevadm trigger --subsystem-match=pci --action=add
