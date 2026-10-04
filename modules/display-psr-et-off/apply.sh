# shellcheck shell=bash
# Panel Replay Selective Update with Early Transport leaves stale copies of the
# cursor on the (180 degree mounted) top panel. Early Transport has no module
# parameter; the PSR debugfs bit 0x20 turns off only that and keeps Panel Replay SU.
duo_install_file "$MOD_DIR/files/zenbook-duo-psr-et-off.service" /etc/systemd/system/zenbook-duo-psr-et-off.service
systemctl daemon-reload
duo_enable_unit zenbook-duo-psr-et-off.service --now
