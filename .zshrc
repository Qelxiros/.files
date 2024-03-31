ZSH_THEME="gentoo"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    vi-mode
)

export ZSH="$HOME/.oh-my-zsh"
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH="$PATH:$HOME/.cargo/bin"
export CARGO_NET_GIT_FETCH_WITH_CLI=true
export GPG_TTY=$(tty)
export TERMINAL=kitty

source $ZSH/oh-my-zsh.sh

alias l='ls -lApv --group-directories-first --block-size=h --color=always'
alias clr='clear && fastfetch'
alias ec='$EDITOR $HOME/.zshrc'
alias sc='source $HOME/.zshrc'
alias cat='bat'
alias clip='xclip -selection clipboard'
alias drip='echo -n "\\0x7"'
alias nano='nvim'
alias micro='micro'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias hibernate='systemctl hibernate; exit'
alias cargon='cargo +nightly'
alias fd='fd -u'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

dbus-update-activation-environment DISPLAY

unsetopt autocd
