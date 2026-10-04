#!/bin/sh
# Build duo-rotate (needs qt6-base, libkscreen; no cmake required).
set -e
cd "$(dirname "$0")"
/usr/lib/qt6/moc main.cpp -o main.moc
g++ -std=c++20 -O2 -fPIC main.cpp -o duo-rotate -I. -I/usr/include/KF6/KScreen \
	$(pkg-config --cflags --libs Qt6Gui Qt6DBus) -lKF6Screen
