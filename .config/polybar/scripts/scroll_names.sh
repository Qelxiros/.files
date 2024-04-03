trap "pkill zscroll --parent $$" EXIT
/home/jeremy/github/zscroll/zscroll --always-reprint true -l 30 \
    --delay 0.1 \
    --scroll-padding "  " \
    --before-text "%{F#fff}" \
    --match-command "mpc status '%state%'" \
    --match-text "" "--scroll 0 --after-text=\"%{F-}%{H}\"" \
    --match-text "playing" "--scroll 1 --after-text=\"%{F-}%{H}  %{T4}%{A1:mpc prev:}󰒮%{A} %{A1:mpc toggle:}󰏤%{A} %{A1:mpc next:}󰒭%{A}%{T-}\"" \
    --match-text "paused" "--scroll 0 --after-text=\"%{F-}%{H}  %{T4}%{A1:mpc prev:}󰒮%{A} %{A1:mpc toggle:}󰐊%{A} %{A1:mpc next:}󰒭%{A}%{T-}\"" \
    --update-check true "mpc current -f '%title% - %artist%'" \
    | while IFS='$\n' read -r line; do echo "%{H:#f00:-:$(bc -l <<< $(mpc status '%percenttime%' | sed 's/%//')/100.)}$line"; done
