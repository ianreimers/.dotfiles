#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias vim="nvim"
alias stow="stow --target=${HOME}" 

TERM='alacritty'
SHELL='bash'
PS1='[\u@\h \W]\$ '

# Use color in less
export LESS='-R --use-color -Dd+r$Du+b$'

neofetch
source /usr/share/nvm/init-nvm.sh
