# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(
    git
    vi-mode
)

source $ZSH/oh-my-zsh.sh

alias l='eza -lagBMo --no-permissions --sort type --color-scale age --time-style "+%Y-%m-%d %T"'
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
alias rg='rg -uu'
alias ncdu='ncdu --color=dark'
alias top='bpytop'
alias btop='bpytop'
alias ssh='kitten ssh'

# Advent of Code
alias aocgo='aocd & aocprep && aocopen'
alias aoct='sed -e "s/%DAY%/$(date -d tomorrow +%d)/" ~/github/adventofrust/src/bin/template > ~/github/adventofrust/src/bin/$(date -d tomorrow +%d).rs && cd ~/github/adventofrust/ && nvim src/bin/$(date -d tomorrow +%d).rs'
alias aocd='rm -rf ~/github/adventofrust/input/$(date +%d) ~/github/adventofrust/src/bin/puzzle.md && aoc d -i ~/github/adventofrust/input/$(date +%d) -p ~/github/adventofrust/src/bin/puzzle.md'
alias aocprep='sed -e "s/%DAY%/$(date +%d)/" ~/github/adventofrust/src/bin/template > ~/github/adventofrust/src/bin/$(date +%d).rs'
alias aocopen='cd ~/github/adventofrust/ && nvim src/bin/$(date +%d).rs'
alias aocrun='cd ~/github/adventofrust/ && cargo run --bin $(date +%d) | tee /tmp/aoc && tail -n1 /tmp/aoc | clip'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

dbus-update-activation-environment DISPLAY

unsetopt autocd

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.profile
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
