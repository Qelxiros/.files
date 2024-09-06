#!/bin/sh
dunstctl set-paused true;
sudo -K;
if [ -f /home/jeremy/.config/i3/transparent ]; then
    i3lock -Ltunc 00000000 --pass-media-keys;
else
    i3lock -utnc 00000000 -i /home/jeremy/.config/i3/background.png --pass-media-keys;
fi
dunstctl set-paused false;
xmodmap /home/jeremy/.Xmodmap;
xset r rate 250 50;
