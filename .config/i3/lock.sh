#!/bin/sh
dunstctl set-paused true
if [ -f /home/jeremy/.config/i3/allow_passthrough ]; then
    i3lock -u -n -i /home/jeremy/.config/i3/background.png --pass-media-keys --pass-screen-keys --pass-volume-keys
else
    i3lock -u -n -i /home/jeremy/.config/i3/background.png
fi
dunstctl set-paused false;
/home/jeremy/.config/i3/volume_script.sh;
xmodmap /home/jeremy/.Xmodmap;
xset r rate 250 50;
podman restart im_in_your_walls -t 0;
