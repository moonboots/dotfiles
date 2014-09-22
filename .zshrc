#umask 077

#export TERM=rxvt-unicode-256color
# export TERM=xterm-256color
# export TERM=screen-256color
export TERM=st-256color
# export TERM=rxvt-unicode
  # if [ -z $TMUX ]; then
  #   export TERM=rxvt-unicode
  # else
  #   # export TERM=rxvt-unicode
  #   export TERM=screen-256color
  #   # export TERM=xterm-256color
  # fi

export EDITOR=vim

# echos color code to use for hostname portion of prompt
# for colors, see http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png
function get-hostname-color() {
  if [ ! -f ~/.hostname-colors ]; then
    echo -n "15" # color white
  else
    # look in file for color code
    # each line of file should be hostname <space> color code
    echo -n $( \
    cat ~/.hostname-colors |
    grep "^$(hostname) " |
    cut -d " " -f2)
  fi
}

# emacs shortcuts
bindkey -e

# See link for magic space usage
# http://www.ukuug.org/events/linux2003/papers/bash_tips/#slide15
bindkey ' ' magic-space

# autocompletion
autoload -U compinit
compinit
setopt bash_auto_list
export ZLSCOLORS="${LS_COLORS}"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31' 

# delimits words in movement and deletion shortcuts
# TODO context sensative delimiters
# e.g. alt-bs for arg /home/jack/.vim should delete .vim
# but alt-bs for arg core.editor should only delete editor
# investigate http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#ZLE-Functions
export WORDCHARS='*?._-[]~=&;!#$%^(){}<>'

# bash style word delimiter
autoload -U select-word-style
select-word-style normal

# prompt
autoload -U colors && colors
#PROMPT="
#%F{239}%d%{$reset_color%}
#%B%F{208}$ %{$reset_color%}"
PROMPT="
%F{246}%d %F{$(get-hostname-color)}%n@%2m%{$reset_color%}
%F{254}$ %{$reset_color%}"

# shift-tab for reverse completion
bindkey '^[[Z' reverse-menu-complete

# source aliases and path
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_path ]; then
    . ~/.bash_path
fi

# dir=$(readlink -f $0)
dir=$HOME
eval $(dircolors -b $dir/.dircolors-solarized/dircolors.256dark)

# unbind alt+1, alt+2, alt+3
# i use these shortcuts in screen/tmux
bindkey -r "\e-"
bindkey -r "\e0"
bindkey -r "\e1"
bindkey -r "\e2"
bindkey -r "\e3"
bindkey -r "\e4"
bindkey -r "\e5"
bindkey -r "\e6"
bindkey -r "\e7"
bindkey -r "\e8"
bindkey -r "\e9"

# prevent ctrl-d logout
setopt IGNORE_EOF

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# save history across sessions
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt share_history
setopt hist_ignore_all_dups

# make zsh ctrl-u delete text before cursor, not entire line
bindkey \^U backward-kill-line

# ctrl-x-e to edit line in editor
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

# Prevent C-s and C-q from stopping and resuming flow control
# I need C-s for forward history search!
setopt noflowcontrol

autoload -U select-word-style
select-word-style bash

export LESS_TERMCAP_mb=$'\E[38;05;196m' # dunno what this colors
# export LESS_TERMCAP_md=$'\E[38;05;118m' # header color
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;38;05;118m' # search highlighting
export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[38;05;184m' # command and params

source ~/.tmux-ssh/tmux-sshrc

source $dir/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# override colors
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=165,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow
ZSH_HIGHLIGHT_STYLES[alias]=fg=green
ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
ZSH_HIGHLIGHT_STYLES[function]=fg=green
ZSH_HIGHLIGHT_STYLES[command]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=green
ZSH_HIGHLIGHT_STYLES[path]=underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=94
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=199,bold
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[assign]=none

setopt HIST_IGNORE_SPACE

export ALTERNATE_EDITOR=""

# bindkey "^[Od" backward-word  \# control-left
# bindkey "^[Oc" forward-word   \# control-right

# Map Ctrl-S to sth usefull other than XOFF (interrupt data flow).
# stty -ixon

stty stop undef
stty start undef

# fix backspace in st
# http://www.unix.com/unix-for-dummies-questions-and-answers/10766-ctrl-h-versus-versus-backspace.html
stty erase "^H"

# https://wiki.archlinux.org/index.php/Start_X_at_Login
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > ~/x.log.$(date +%Y%m%dT%H%M%S) 2>&1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && systemd-cat startx
