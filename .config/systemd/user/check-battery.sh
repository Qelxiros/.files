#!/bin/env sh
BATINFO=`acpi -b`
BATLEVEL=`echo $BATINFO | cut -f 4 -d" " | sed 's/%,//g'`
BATSTAT=`echo $BATINFO | cut -f 3 -d" "`
FILE=`cat /home/jeremy/.config/systemd/battery_script_utility`
if [[ $BATSTAT="Discharging," && $BATLEVEL -le 2 ]]; then
    systemctl hibernate
elif [[ $BATLEVEL -le 10 ]]; then
    if [[ $BATSTAT="Discharging," && $FILE -ne 1 && ! -z `notify-send "Low battery - $BATLEVEL" -u critical --action "ACK"` ]] ; then
        echo 1 > /home/jeremy/.config/systemd/battery_script_utility
    fi
elif [[ $BATLEVEL -eq 50 ]]; then
    if [[ $BATSTAT="Discharging," && $FILE -ne 1 ]] ; then
        notify-send "Half battery" -u critical
        echo 1 > /home/jeremy/.config/systemd/battery_script_utility
    fi
else
    echo 0 > /home/jeremy/.config/systemd/battery_script_utility
fi

