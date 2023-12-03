xset r rate 250 50
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xset s off
xset -dpms
xset s noblank
picom -b
exec /usr/bin/i3
