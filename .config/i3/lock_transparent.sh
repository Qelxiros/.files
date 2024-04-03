#!/bin/sh
dunstctl set-paused true;
i3lock -tL -u -n -c 00000000 --pass-media-keys --pass-screen-keys --pass-volume-keys;
dunstctl set-paused false;
/home/jeremy/.config/i3/volume_script.sh;
xmodmap /home/jeremy/.Xmodmap;
xset r rate 250 50;
podman restart im_in_your_walls -t 0;
