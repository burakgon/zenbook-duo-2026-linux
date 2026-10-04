# shellcheck shell=bash
duo_install_file "$MOD_DIR/files/kbd-bind-asus" /usr/lib/zenbook-duo/kbd-bind-asus 0755
duo_install_file "$MOD_DIR/files/90-zenbook-duo-keyboard.rules" /etc/udev/rules.d/90-zenbook-duo-keyboard.rules
# bind an already attached keyboard right away
for d in /sys/bus/hid/devices/0003:0B05:1CD7.* /sys/bus/hid/devices/0005:0B05:1CD8.*; do
	[[ -e $d ]] && [[ "$(basename "$(readlink "$d/driver")")" == hid-generic ]] && /usr/lib/zenbook-duo/kbd-bind-asus "$(basename "$d")"
done
true
