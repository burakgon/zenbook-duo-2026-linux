# shellcheck shell=bash
# Two cheap checks instead of a resident service: a pacman hook after kernel updates
# (are the DKMS fixes built for the new kernel?) and a one-shot user service per login
# (sound card, sensors, keyboard driver). Both stay silent while everything works.
duo_install_file "$MOD_DIR/files/duo-health" /usr/lib/zenbook-duo/duo-health 0755
duo_install_file "$MOD_DIR/files/95-zenbook-duo-kernel-check.hook" /etc/pacman.d/hooks/95-zenbook-duo-kernel-check.hook
duo_install_file "$MOD_DIR/files/zenbook-duo-health.service" /etc/systemd/user/zenbook-duo-health.service
duo_enable_user_unit zenbook-duo-health.service
