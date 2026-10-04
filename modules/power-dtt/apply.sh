# shellcheck shell=bash
# The BIOS changes the platform profile through WMI and then only notifies the
# Intel DTT participant (Notify(IETM, 0x88)); on Windows the DTT service reacts by
# applying the OEM tables. Linux has no DTT service, so power limits stay at the
# boot defaults (MMIO PL1 20 W / PL2 30 W). thermald --adaptive implements the
# same tables: Whisper 20-30/35 W, Standard 28-42/55 W, Performance 45-55/64 W,
# plus the HOT, screen-off and posture (Book/Stand) targets.

duo_pkg_install thermald
duo_enable_unit thermald.service --now
