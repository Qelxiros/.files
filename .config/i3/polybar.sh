#!/usr/bin/env sh
polybar-msg cmd quit
polybar top &
polybar bottom &
polybar -r
/home/jeremy/.config/i3/volume_script.sh
