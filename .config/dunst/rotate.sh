#!/bin/env sh
TODAYS_FILE_NAME=`date --date="2 days ago" +/home/jeremy/.config/dunst/histfile.%Y-%m-%d`
gpg --output $TODAYS_FILE_NAME.gpg --encrypt --recipient jeremy3141592@gmail.com $TODAYS_FILE_NAME && rm $TODAYS_FILE_NAME;
scp /home/jeremy/.config/dunst/*.gpg jet:~qel/notif-backups && rm /home/jeremy/.config/dunst/*.gpg
