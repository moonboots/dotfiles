# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend
PROMPT_COMMAND='history -a'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

PS1='\n$PWD\n\[\033[01;32m\]$\[\033[00m\] '

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_path ] && . ~/.bash_path
[ -f /etc/bash_completion ] && ! shopt -oq posix && . /etc/bash_completion

export EDITOR=vim

# unbind alt+1, alt+2, alt+3
# i use these shortcuts in screen/tmux
bind -r "\e-"
bind -r "\e0"
bind -r "\e1"
bind -r "\e2"
bind -r "\e3"
bind -r "\e4"
bind -r "\e5"
bind -r "\e6"
bind -r "\e7"
bind -r "\e8"
bind -r "\e9"

# disable control flow
stty -ixon -ixoff

export TERM=xterm-256color

# effectively prevents ctrl+d from exiting shell
export IGNOREEOF=100
