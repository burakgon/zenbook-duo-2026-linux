# shellcheck shell=bash
# Both BOE NB140B9M panels advertise brightness over AUX only (DPCD 0x701=0x99,
# 0x702=0x86: no PWM pin, AUX brightness, 16 bit). xe follows the VBT and drives a
# PWM backlight the panels ignore, so intel_backlight changes but the screen does
# not. Force the VESA DPCD backlight interface.
duo_cmdline_add "xe.enable_dpcd_backlight=1"
