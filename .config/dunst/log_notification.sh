#!/bin/env sh
if [ $DUNST_URGENCY != "LOW" ]; then
  echo "`date`: {desktopentry: $DUNST_DESKTOP_ENTRY, appname: $DUNST_APP_NAME, summary: $DUNST_SUMMARY, body: $DUNST_BODY, iconpath: $DUNST_ICON_PATH, urgency: $DUNST_URGENCY, id: $DUNST_ID, progress: $DUNST_PROGRESS, category: $DUNST_CATEGORY}" | awk '{printf "%s%s",sep,$0; sep="\\n"} END{print ""}' >> /home/jeremy/.config/dunst/histfile.`date +%Y-%m-%d`
fi
