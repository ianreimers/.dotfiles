#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERM='alacritty'
export SHELL='bash'
export PS1='[\u@\h \W]\$ '
export EDITOR='nvim'
export WM='i3'
export PAGER='less'

# Use color in less
export LESS='-R --use-color -Dd+r$Du+b$'
