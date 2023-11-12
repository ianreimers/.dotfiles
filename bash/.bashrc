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

alias dockbuild='sudo docker build -t test-server .'
alias docklocalrun='sudo docker run -p 127.0.0.1:4000:4000 test-server'
alias dockrun='sudo docker run -p 4000:4000 test-server'
alias dockimgrm='sudo docker image rm test-server'
alias dockcontrm='sudo docker container prune'

#export TERM='alacritty'
#export SHELL='bash'
#export PS1='[\u@\h \W]\$ '
#
## Use color in less
#export LESS='-R --use-color -Dd+r$Du+b$'
export CHROME_PATH="/usr/bin/chromium"

neofetch
source /usr/share/nvm/init-nvm.sh
