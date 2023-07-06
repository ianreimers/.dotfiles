#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls --color=auto -la"
alias grep="grep --color=auto"
alias vim="nvim"
alias stow="stow --target=${HOME}" 
alias mon="xrandr --output DP-2 --off && xrandr --output DP-2 \
  --auto --right-of DVI-D-1"

TERM='alacritty'
SHELL='bash'
PS1='[\u@\h \W]\$ '

# Use color in less
export LESS='-R --use-color -Dd+r$Du+b$'

neofetch
source /usr/share/nvm/init-nvm.sh
