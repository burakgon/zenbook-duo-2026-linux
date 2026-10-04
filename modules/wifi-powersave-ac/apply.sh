# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/zenbook-duo-wifi-ps" /usr/lib/zenbook-duo/zenbook-duo-wifi-ps 0755
duo_install_file "$MOD_DIR/files/90-zenbook-duo-wifi-ps.rules" /etc/udev/rules.d/90-zenbook-duo-wifi-ps.rules
duo_install_file "$MOD_DIR/files/90-zenbook-duo-wifi-ps.nm" /etc/NetworkManager/dispatcher.d/90-zenbook-duo-wifi-ps 0755
/usr/lib/zenbook-duo/zenbook-duo-wifi-ps
