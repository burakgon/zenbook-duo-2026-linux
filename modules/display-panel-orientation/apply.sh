# shellcheck shell=bash
# The panels scan out rotated 180 degrees but neither the VBT nor a DRM quirk says
# so. Users then rotate the outputs in KDE by hand, which breaks as soon as the
# accelerometer works (auto-rotate "corrects" it back). Declaring the panel
# orientation lets the kernel console and KWin handle it; KDE rotation must be
# "none" afterwards.
duo_cmdline_add "video=eDP-1:panel_orientation=upside_down" "video=eDP-2:panel_orientation=upside_down"
