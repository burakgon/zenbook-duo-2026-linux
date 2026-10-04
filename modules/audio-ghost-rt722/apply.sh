# shellcheck shell=bash
# The BIOS lists an RT722 codec on SoundWire link 3 next to the real CS42L43.
# 7.2.x builds DAI links for both and fails with a duplicate
# "SDW3-Playback-SimpleJack" link (sof_sdw probe -12, no sound card).
# Rebuild soundwire-intel with the upstream DMI quirk for every installed 7.2.x
# kernel; dkms.conf restricts builds to 7.2.x (7.3+ already has the quirk).

duo_dkms_install "$MOD_DIR/dkms" zenbook-duo-soundwire-intel 7.2.9.1
