#!/bin/bash
zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "/home/jeremy/.config/polybar/scripts/get_mpc_status.sh" \
        --match-text "" "--scroll 0 --after-text=\"\"" \
        --match-text "\[playing\]" "--scroll 1 --after-text=\"  %{T4}%{A1:mpc prev:}󰒮%{A} %{A1:mpc toggle:}󰏤%{A} %{A1:mpc next:}󰒭%{A}%{T-}\"" \
        --match-text "\[paused\]" "--scroll 0 --after-text=\"  %{T4}%{A1:mpc previous:}󰒮%{A} %{A1:mpc toggle:}󰐊%{A} %{A1:mpc next:}󰒭%{A}%{T-}\"" \
        --update-check true "mpc current -f '%title% - %artist%'" &
wait
