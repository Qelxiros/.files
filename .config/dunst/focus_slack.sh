#!/bin/env sh
slack && wmctrl -i -a $(wmctrl -l | grep "Slack$" | head -n1 | cut -d " " -f1)
