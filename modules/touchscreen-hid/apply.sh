# shellcheck shell=bash
# Sourced by `duo apply` with lib/common.sh and lib/actions.sh loaded.

duo_install_file "$MOD_DIR/files/zenbook-duo-touchscreen.conf" /etc/modprobe.d/zenbook-duo-touchscreen.conf
duo_note_reboot
