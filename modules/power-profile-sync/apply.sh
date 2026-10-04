# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/zenbook-duo-profile-sync" /usr/lib/zenbook-duo/zenbook-duo-profile-sync 0755
duo_install_file "$MOD_DIR/files/zenbook-duo-profile-sync.service" /etc/systemd/system/zenbook-duo-profile-sync.service
systemctl daemon-reload
duo_enable_unit zenbook-duo-profile-sync.service --now
