# shellcheck shell=bash
# actions.sh - transactional system changes with automatic revert.
#
# Every helper records what it did in the active module's manifest
# ($DUO_STATE_DIR/modules/<id>/manifest, one action per line). `duo revert`
# replays the manifest backwards, so module apply scripts never need a
# hand-written revert script. All helpers are idempotent.

# Deferred global work, executed once at the end of a transaction.
DUO_NEED_UDEV_RELOAD=0
DUO_NEED_SYSTEMD_RELOAD=0
DUO_NEED_INITRAMFS=0
DUO_NEED_BOOTLOADER=0
DUO_NEED_REBOOT=0
DUO_RESTART_UNITS=()

_manifest() { echo "$DUO_STATE_DIR/modules/$MOD_ID/manifest"; }
_backup_dir() { echo "$DUO_STATE_DIR/modules/$MOD_ID/backup"; }

# record TYPE ARGS... (tab separated)
_record() {
	local IFS=$'\t'
	mkdir -p "$(dirname "$(_manifest)")"
	# do not record the same action twice (idempotent re-apply)
	grep -qxF "$*" "$(_manifest)" 2>/dev/null || printf '%s\n' "$*" >>"$(_manifest)"
}

# Only udev/systemd reloads are automatic. The initramfs is rebuilt solely when a
# module asks for it (duo_need_initramfs): of the drivers we touch, only xe and
# soundwire-bus live in the initramfs, and xe options go on the kernel cmdline.
_mark_for_path() {
	case "$1" in
	/etc/udev/* | /usr/lib/udev/*) DUO_NEED_UDEV_RELOAD=1 ;;
	/etc/systemd/* | /usr/lib/systemd/*) DUO_NEED_SYSTEMD_RELOAD=1 ;;
	esac
}

duo_need_initramfs() { DUO_NEED_INITRAMFS=1; }

# duo_install_file SRC DEST [MODE]
duo_install_file() {
	local src="$1" dest="$2" mode="${3:-0644}" bak
	[[ -f $src ]] || die "missing source file: $src"
	if [[ -e $dest ]] && cmp -s "$src" "$dest"; then
		info "unchanged: $dest"
		_record file "$dest" "$(_existing_backup "$dest")"
		return 0
	fi
	bak="$(_backup_once "$dest")"
	install -D -m "$mode" "$src" "$dest"
	_record file "$dest" "$bak"
	_mark_for_path "$dest"
	ok "installed $dest"
}

# duo_write_file DEST [MODE] <<'EOF' ... EOF
duo_write_file() {
	local dest="$1" mode="${2:-0644}" tmp
	tmp="$(mktemp)"
	cat >"$tmp"
	duo_install_file "$tmp" "$dest" "$mode"
	rm -f "$tmp"
}

# Back up a pre-existing file the first time we overwrite it. Prints backup path or "-".
_backup_once() {
	local dest="$1" bak
	bak="$(_existing_backup "$dest")"
	if [[ $bak == - && -e $dest ]]; then
		bak="$(_backup_dir)$dest"
		mkdir -p "$(dirname "$bak")"
		cp -a "$dest" "$bak"
	fi
	echo "$bak"
}

_existing_backup() {
	local bak
	bak="$(_backup_dir)$1"
	[[ -e $bak ]] && echo "$bak" || echo -
}

# duo_enable_unit UNIT [--now]
duo_enable_unit() {
	local unit="$1" now="${2:-}" was
	was="$(systemctl is-enabled "$unit" 2>/dev/null || true)"
	systemctl enable ${now:+--now} "$unit" >/dev/null 2>&1 || die "failed to enable $unit"
	_record unit-enable "$unit" "${was:-unknown}"
	ok "enabled $unit"
}

# duo_enable_user_unit UNIT : enable a systemd user unit for every user (systemctl --global).
duo_enable_user_unit() {
	systemctl --global enable "$1" >/dev/null 2>&1 || die "failed to enable user unit $1"
	_record user-unit-enable "$1"
	ok "enabled user unit $1 (all users, from next login)"
}

# duo_disable_unit UNIT [--now]
duo_disable_unit() {
	local unit="$1" now="${2:-}" was
	was="$(systemctl is-enabled "$unit" 2>/dev/null || true)"
	systemctl disable ${now:+--now} "$unit" >/dev/null 2>&1 || true
	_record unit-disable "$unit" "${was:-unknown}"
	ok "disabled $unit"
}

# duo_mask_unit UNIT
duo_mask_unit() {
	systemctl mask "$1" >/dev/null 2>&1 || die "failed to mask $1"
	_record unit-mask "$1"
	ok "masked $1"
}

# duo_pkg_install PKG... : install missing packages; remembers which ones we added.
duo_pkg_install() {
	local p missing=()
	for p in "$@"; do
		pacman -Qq "$p" >/dev/null 2>&1 || missing+=("$p")
	done
	((${#missing[@]})) || return 0
	info "installing packages: ${missing[*]}"
	pacman -S --needed --noconfirm "${missing[@]}" || die "pacman failed"
	for p in "${missing[@]}"; do _record pkg "$p"; done
}

# duo_cmdline_add PARAM... : kernel parameters, applied through the bootloader backend.
duo_cmdline_add() {
	local p
	for p in "$@"; do _record cmdline "$p"; done
	DUO_NEED_BOOTLOADER=1
	DUO_NEED_REBOOT=1
	ok "kernel parameters queued: $*"
}

# duo_dkms_install SRC_DIR NAME VERSION : register, build and install a DKMS package.
duo_dkms_install() {
	local src="$1" name="$2" ver="$3" k
	duo_pkg_install dkms
	rm -rf "/usr/src/$name-$ver"
	cp -a "$src" "/usr/src/$name-$ver"
	dkms add -m "$name" -v "$ver" >/dev/null 2>&1 || true
	_record dkms "$name" "$ver"
	for k in $(installed_kernels); do
		[[ -d /usr/lib/modules/$k/build ]] || continue
		if dkms install -m "$name" -v "$ver" -k "$k" >/dev/null 2>&1; then
			ok "dkms $name/$ver built for $k"
		else
			# BUILD_EXCLUSIVE_KERNEL mismatches are expected for kernels that already contain the fix
			dkms status -m "$name" -v "$ver" -k "$k" 2>/dev/null | grep -q installed ||
				info "dkms $name/$ver not built for $k (excluded or failed: see dkms status)"
		fi
	done
	DUO_NEED_REBOOT=1
}

# duo_runtime CMD... : record a command whose effect only lasts until reboot (informational).
duo_note_reboot() { DUO_NEED_REBOOT=1; }

# ----------------------------------------------------------------- bootloader

DUO_LIMINE_DEFAULTS=/etc/default/limine
DUO_BLOCK_BEGIN="# >>> zenbook-duo-linux (managed, do not edit) >>>"
DUO_BLOCK_END="# <<< zenbook-duo-linux <<<"

# Collect cmdline parameters from all applied modules.
_all_cmdline_params() {
	local m
	for m in "$DUO_STATE_DIR"/modules/*/manifest; do
		[[ -f $m ]] || continue
		awk -F'\t' '$1=="cmdline"{print $2}' "$m"
	done | awk '!seen[$0]++'
}

# Rewrite the managed block in /etc/default/limine and regenerate boot entries.
duo_sync_bootloader() {
	local params tmp
	params="$(_all_cmdline_params | tr '\n' ' ' | sed 's/ $//')"
	if [[ -f $DUO_LIMINE_DEFAULTS ]]; then
		tmp="$(mktemp)"
		sed "/^$DUO_BLOCK_BEGIN\$/,/^$DUO_BLOCK_END\$/d" "$DUO_LIMINE_DEFAULTS" >"$tmp"
		if [[ -n $params ]]; then
			{
				echo "$DUO_BLOCK_BEGIN"
				echo "KERNEL_CMDLINE[default]+=\" $params\""
				echo "$DUO_BLOCK_END"
			} >>"$tmp"
		fi
		if ! cmp -s "$tmp" "$DUO_LIMINE_DEFAULTS"; then
			[[ -e $DUO_STATE_DIR/limine.default.orig ]] || cp -a "$DUO_LIMINE_DEFAULTS" "$DUO_STATE_DIR/limine.default.orig"
			cat "$tmp" >"$DUO_LIMINE_DEFAULTS"
			info "regenerating Limine entries (limine-update)"
			limine-update >/dev/null 2>&1 || warn "limine-update failed; run it manually"
			ok "kernel cmdline extras: ${params:-<none>}"
		fi
		rm -f "$tmp"
	elif [[ -f /etc/default/grub ]]; then
		_sync_grub "$params"
	else
		warn "unsupported bootloader setup; add manually to your kernel cmdline: $params"
	fi
}

# GRUB: same marked block at the end of /etc/default/grub (a shell file), then grub-mkconfig.
_sync_grub() {
	local params="$1" tmp cfg
	tmp="$(mktemp)"
	sed "/^$DUO_BLOCK_BEGIN\$/,/^$DUO_BLOCK_END\$/d" /etc/default/grub >"$tmp"
	if [[ -n $params ]]; then
		{
			echo "$DUO_BLOCK_BEGIN"
			echo "GRUB_CMDLINE_LINUX_DEFAULT=\"\${GRUB_CMDLINE_LINUX_DEFAULT} $params\""
			echo "$DUO_BLOCK_END"
		} >>"$tmp"
	fi
	if ! cmp -s "$tmp" /etc/default/grub; then
		[[ -e $DUO_STATE_DIR/grub.default.orig ]] || cp -a /etc/default/grub "$DUO_STATE_DIR/grub.default.orig"
		cat "$tmp" >/etc/default/grub
		cfg=/boot/grub/grub.cfg
		[[ -f /boot/grub2/grub.cfg ]] && cfg=/boot/grub2/grub.cfg
		info "regenerating $cfg"
		if have grub-mkconfig; then
			grub-mkconfig -o "$cfg" >/dev/null 2>&1 || warn "grub-mkconfig failed; run it manually"
		elif have grub2-mkconfig; then
			grub2-mkconfig -o "$cfg" >/dev/null 2>&1 || warn "grub2-mkconfig failed; run it manually"
		fi
		ok "kernel cmdline extras: ${params:-<none>}"
	fi
	rm -f "$tmp"
}

duo_regen_initramfs() {
	info "regenerating initramfs"
	if have limine-mkinitcpio; then
		limine-mkinitcpio >/dev/null 2>&1 || warn "limine-mkinitcpio failed"
	else
		mkinitcpio -P >/dev/null 2>&1 || warn "mkinitcpio -P failed"
	fi
}

# Run deferred work once.
duo_finish_transaction() {
	((DUO_NEED_SYSTEMD_RELOAD)) && systemctl daemon-reload
	local u
	for u in "${DUO_RESTART_UNITS[@]}"; do
		systemctl try-restart "$u" && ok "restarted $u"
	done
	((DUO_NEED_UDEV_RELOAD)) && udevadm control --reload && udevadm trigger --action=change >/dev/null 2>&1
	((DUO_NEED_BOOTLOADER)) && duo_sync_bootloader
	((DUO_NEED_INITRAMFS)) && duo_regen_initramfs
	((DUO_NEED_REBOOT)) && warn "reboot required for all changes to take effect"
	return 0
}

# ------------------------------------------------------------------- revert

# Undo every recorded action of the current module, newest first.
duo_revert_manifest() {
	local manifest type a b c
	manifest="$(_manifest)"
	[[ -f $manifest ]] || { info "nothing recorded for $MOD_ID"; return 0; }
	while IFS=$'\t' read -r type a b c; do
		case "$type" in
		file)
			if [[ $b != - && -e $b ]]; then
				cp -a "$b" "$a" && ok "restored $a"
			else
				rm -f "$a" && ok "removed $a"
			fi
			_mark_for_path "$a"
			# a removed drop-in only takes effect once its service restarts
			[[ $a =~ /([^/]+\.service)\.d/[^/]+$ ]] && DUO_RESTART_UNITS+=("${BASH_REMATCH[1]}")
			;;
		unit-enable)
			[[ $b == enabled ]] || { systemctl disable --now "$a" >/dev/null 2>&1; ok "disabled $a"; }
			;;
		user-unit-enable)
			systemctl --global disable "$a" >/dev/null 2>&1; ok "disabled user unit $a"
			;;
		unit-disable)
			[[ $b == enabled ]] && { systemctl enable --now "$a" >/dev/null 2>&1; ok "re-enabled $a"; }
			;;
		unit-mask)
			systemctl unmask "$a" >/dev/null 2>&1 && ok "unmasked $a"
			;;
		pkg)
			info "package $a was installed by this module (left installed; remove with: pacman -Rns $a)"
			;;
		cmdline)
			DUO_NEED_BOOTLOADER=1
			DUO_NEED_REBOOT=1
			;;
		dkms)
			dkms remove -m "$a" -v "$b" --all >/dev/null 2>&1
			rm -rf "/usr/src/$a-$b"
			ok "removed dkms $a/$b"
			# the initramfs may carry its own copy of the module (xe does)
			DUO_NEED_INITRAMFS=1
			DUO_NEED_REBOOT=1
			;;
		esac
	done < <(tac "$manifest")
	rm -rf "$DUO_STATE_DIR/modules/$MOD_ID"
}
