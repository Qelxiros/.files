# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

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
alias micro='nvim'
alias dotfiles='git --git-dir=$HOME/.files --work-tree=$HOME -c color.ui=always'
alias dfg='git --git-dir=$HOME/.files --work-tree=$HOME -c color.ui=always'
alias hibernate='systemctl hibernate; exit'
alias cargon='cargo +nightly'
alias fd='fd -u'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

dbus-update-activation-environment DISPLAY

unsetopt autocd

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
