#
# ~/.bash_profile
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Read shouldn't set in shell config (terminal should set instead)
# export TERM='alacritty'
export COLORTERM='truecolor'

export SHELL='bash'
export PS1='[\u@\h \W]\$ '
export EDITOR='nvim'
#export BROWSER='firefox'
export WM='i3'
export PAGER='less'

# Use color in less
export LESS='-R --use-color -Dd+r$Du+b$'
