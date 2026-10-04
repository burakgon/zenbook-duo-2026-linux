#!/bin/sh
# Copy the hid-asus source matching the target kernel series into the build root.
case "$1" in
7.2.*) v=7.2 ;;
*) v=7.3 ;;
esac
cp "src/$v/hid-asus.c" "src/$v/hid-ids.h" .
