if [ -f /home/jeremy/.config/i3/allow_passthrough ]; then
    i3lock -n -i /home/jeremy/.config/i3/lockscreen.png --pass-media-keys --pass-screen-keys --pass-volume-keys
else
    i3lock -n -i /home/jeremy/.config/i3/lockscreen.png
fi
dunstctl set-paused false; /home/jeremy/.config/i3/volume_script.sh
