#
# ~/.bash_profile
# Note:
#   Only sourced by bash when started in login mode (ctrl+alt+F1...F6)
#   Isn't sources when logged in graphically.
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Read shouldn't set in shell config (terminal should set instead)
# export TERM='alacritty'
export COLORTERM='truecolor'

export SHELL='bash'
export PS1='[\u@\h \W]\$ '
export EDITOR='nvim'
export WM='i3'
export PAGER='less'

# Use color in less
export LESS='-R --use-color -Dd+r$Du+b$'
