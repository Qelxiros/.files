#!/bin/env sh
for x in /home/jeremy/.config/dunst/histfile*; do
    if [[ "$x" == $(date --date="today" +/home/jeremy/.config/dunst/histfile.%Y-%m-%d) || "$x" == $(date --date="yesterday" +/home/jeremy/.config/dunst/histfile.%Y-%m-%d) ]]; then
        continue
    fi
    gpg --output $x.gpg --encrypt --recipient jeremy3141592@gmail.com $x && rm $x;
    scp /home/jeremy/.config/dunst/*.gpg freedom:~qel/notif-backups && rm /home/jeremy/.config/dunst/*.gpg;
done
