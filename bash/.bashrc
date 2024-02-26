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

alias leetshot="flameshot gui -p ~/Pictures/leetcode/"
alias venv=". ./.venv/bin/activate"

#export TERM='alacritty'
#export SHELL='bash'
#export PS1='[\u@\h \W]\$ '
#
## Use color in less
#export LESS='-R --use-color -Dd+r$Du+b$'
export CHROME_PATH="/usr/bin/chromium"

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$PATH:$JAVA_HOME/bin

neofetch
source /usr/share/nvm/init-nvm.sh
