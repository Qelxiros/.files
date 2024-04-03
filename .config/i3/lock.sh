#!/bin/sh
dunstctl set-paused true;
if [ -f /home/jeremy/.config/i3/transparent ]; then
    i3lock -L -u -n -c 00000000 --pass-media-keys;
else
    i3lock -u -n -c 00000000 -i /home/jeremy/.config/i3/background.png --pass-media-keys;
fi
dunstctl set-paused false;
/home/jeremy/.config/i3/volume_script.sh;
xmodmap /home/jeremy/.Xmodmap;
xset r rate 250 50;
