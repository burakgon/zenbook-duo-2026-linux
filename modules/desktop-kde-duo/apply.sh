# shellcheck shell=bash
# KDE Plasma (Wayland) integration, as per-user services for every user:
#  * duo-rotate: follows the accelerometer (after it is stable for 1 s), rotates the two
#    panels 180 degrees apart (the top panel is mounted upside down), lays them out
#    around the hinge, maps each touchscreen/pen to its panel after every output change,
#    and turns the bottom panel off while the keyboard is docked on it (USB 0b05:1cd7);
#  * kwin-output-prefs: one brightness slider drives both panels' hardware backlights.
duo_pkg_install gcc pkgconf qt6-base libkscreen python
build="$(mktemp -d)"
/usr/lib/qt6/moc "$MOD_DIR/src/duo-rotate.cpp" -o "$build/duo-rotate.moc"
# shellcheck disable=SC2046
g++ -std=c++20 -O2 -fPIC "$MOD_DIR/src/duo-rotate.cpp" -o "$build/duo-rotate" -I"$build" -I/usr/include/KF6/KScreen \
	$(pkg-config --cflags --libs Qt6Gui Qt6DBus) -lKF6Screen || die "duo-rotate build failed"
duo_install_file "$build/duo-rotate" /usr/lib/zenbook-duo/duo-rotate 0755
rm -rf "$build"
duo_install_file "$MOD_DIR/files/kwin-output-prefs" /usr/lib/zenbook-duo/kwin-output-prefs 0755
duo_install_file "$MOD_DIR/files/zenbook-duo-rotate.service" /etc/systemd/user/zenbook-duo-rotate.service
duo_install_file "$MOD_DIR/files/zenbook-duo-kwin-output-prefs.service" /etc/systemd/user/zenbook-duo-kwin-output-prefs.service
duo_enable_user_unit zenbook-duo-rotate.service
duo_enable_user_unit zenbook-duo-kwin-output-prefs.service
info "log out and back in (or: systemctl --user start zenbook-duo-rotate) to start duo-rotate"
