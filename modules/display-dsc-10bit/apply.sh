# shellcheck shell=bash
# xe drives the 2880x1800@144 panels at 6 bpc + dithering because HBR2x4 cannot
# carry 8 bpc, although the panels support DSC. Forcing DSC (debugfs, there is no
# module parameter) gives 10 bpc; Panel Replay Selective Update keeps working.
# Early Transport must stay off (display-psr-et-off): DSC + ET corrupts (xe #8923).
duo_install_file "$MOD_DIR/files/zenbook-duo-dsc-10bit.service" /etc/systemd/system/zenbook-duo-dsc-10bit.service
systemctl daemon-reload
duo_enable_unit zenbook-duo-dsc-10bit.service --now
