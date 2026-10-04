# shellcheck shell=bash
# 0 = sensors present, 1 = ISH firmware missing/failed.

sensors="$(for d in /sys/bus/iio/devices/iio:device*; do cat "$d/name" 2>/dev/null; done | sort | tr '\n' ' ')"
if [[ $sensors == *accel* ]]; then
	ok "ISH sensors present: $sensors"
	return 0
fi
loader="$(klog | grep 'ISH loader' | tail -2 | tr '\n' ' ')"
warn "no accelerometer (iio: ${sensors:-none})"
[[ -n $loader ]] && info "last ISH loader messages: $loader"
ls /usr/lib/firmware/updates/intel/ish/ish_ptl_* >/dev/null 2>&1 && info "ASUS ISH firmware installed; reboot may be needed"
return 1
