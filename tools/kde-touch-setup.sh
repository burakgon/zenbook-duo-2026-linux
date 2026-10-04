#!/usr/bin/env bash
# kde-touch-setup.sh - per-user KWin touchscreen mapping for the Zenbook Duo UX8407AA.
# Run as the desktop user (not root). KWin persists the result in ~/.config/kcminputrc.
#
# Both panels are mounted upside down and KWin auto-rotates them (sensors-accel-mount);
# the digitizers report upright coordinates, so the touch/pen devices get KWin's own
# per-device orientation 8 (Qt::InvertedLandscapeOrientation). A libinput calibration
# matrix does NOT work here: KWin collapses calibrated touches onto a single point.
set -euo pipefail

prop() { qdbus6 org.kde.KWin "/org/kde/KWin/InputDevice/$1" org.freedesktop.DBus.Properties."$2" org.kde.KWin.InputDevice "${@:3}"; }

for e in /sys/class/input/event*; do
	name="$(cat "$e/device/name" 2>/dev/null)" || continue
	case "$name" in
	"RAYD0001:00 2386:8C05" | "RAYD0001:00 2386:8C05 Stylus") out=eDP-1 ;; # top panel
	"RAYD0002:00 2386:8C06" | "RAYD0002:00 2386:8C06 Stylus") out=eDP-2 ;; # bottom panel
	*) continue ;;
	esac
	ev="${e##*/}"
	prop "$ev" Set outputName "$out"
	prop "$ev" Set calibrationMatrix "1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1"
	prop "$ev" Set orientationDBus 8
	echo "$name ($ev): output=$(prop "$ev" Get outputName) orientation=$(prop "$ev" Get orientationDBus)"
done
