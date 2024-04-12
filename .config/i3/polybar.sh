#!/usr/bin/env sh
polybar-msg cmd quit
polybar top &
polybar bottom &
polybar -r
