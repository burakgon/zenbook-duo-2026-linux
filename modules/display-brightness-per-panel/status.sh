# shellcheck shell=bash
n=0
for b in /sys/class/backlight/*; do
	[[ $(cat "$b/type" 2>/dev/null) == raw && $(cat "$b/device/enabled" 2>/dev/null) == enabled ]] && n=$((n + 1))
done
if ((n < 2)); then
	info "$n built-in panel backlight(s) (needs display-dpcd-backlight and both panels on)"
	return 2
fi
rc=0
for p in kwin powerdevil; do
	if LC_ALL=C pacman -Qi "$p" | grep -q '^Packager *: zenbook-duo-linux$'; then
		ok "$p: patched build $(pacman -Q "$p" | cut -d' ' -f2)"
	else
		warn "$p: repository build, the bottom panel only gets software dimming"
		rc=1
	fi
done
return $rc
