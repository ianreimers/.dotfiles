#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sets vim bindings in shell
set -o vi

alias ls="ls --color=auto"
alias ll="ls --color=auto -la"
alias grep="grep --color=auto"
alias vim="nvim"
alias stow="stow --target=${HOME}" 
alias mon="xrandr --output DP-2 --off && xrandr --output DP-2 \
  --auto --right-of DVI-D-0"

alias leetshot="flameshot gui -p ~/Pictures/leetcode/"
alias venv=". ./.venv/bin/activate"

alias tablet="xsetwacom --set 'Wacom One by Wacom S Pen stylus' Rotate half && xsetwacom set 'Wacom One by Wacom S Pen stylus' MapToOutput HEAD-0"
alias ..="cd .."

alias oo="cd ~/Documents/obsidian/test_vault/ && vim ."

# export TERM='alacritty'
export SHELL='bash'
export PS1='[\u@\h \W]\$ '
# export BROWSER="firefox"

## Use color in less
#export LESS='-R --use-color -Dd+r$Du+b$'
export CHROME_PATH="/usr/bin/chromium"

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$PATH:$JAVA_HOME/bin

export PATH=$PATH:$HOME/.dotnet/tools
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export PATH=$PATH:$HOME/opt/bin

source /usr/share/nvm/init-nvm.sh
source /usr/share/nvm/init-nvm.sh
