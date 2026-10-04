# shellcheck shell=bash
# 0 = audio card ok, 1 = broken, 2 = not applicable.

if klog | grep -q "probe with driver sof_sdw failed"; then
	warn "sof_sdw failed to probe in this boot (no internal speakers/mic)"
	dkms status zenbook-duo-soundwire-intel 2>/dev/null | grep -q "$(uname -r).*installed" &&
		info "fixed module installed for $(uname -r); reboot pending"
	return 1
fi
if grep -q sofsoundwire /proc/asound/cards; then
	ok "SoundWire card registered: $(grep -c Speaker <(aplay -l 2>/dev/null)) speaker PCM, ghost RT722 $(modinfo -n soundwire_intel 2>/dev/null | grep -q dkms && echo 'filtered by dkms module' || echo 'not present')"
	return 0
fi
warn "no SoundWire sound card"
return 1
