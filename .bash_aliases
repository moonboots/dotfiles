uname=$(uname)

alias path='echo $PATH | sed "s/:/\n/g"'
alias gs='git status -uno'
alias ga='git add'
alias gai='git add -i'
alias gap='git add -p'
# alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam="git commit -a -m"
alias gd="git diff -b --patience --color-words"
alias gl="git log"
# alias glg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
color1="%x1b[38;05;118m"
color2="%x1b[38;05;208m"
alias glg="git log --graph --full-history --all --color --pretty=format:\"${color1}%h%x09${color2}%d%x1b[0m%x20%s\""

# git tag sort
# http://stackoverflow.com/a/6429827/596263
alias gts='git tag | xargs -I@ git log --format=format:"%ci %h @%n" -1 @ | sort'

alias ant='ant -logger org.apache.tools.ant.listener.AnsiColorLogger'

case $uname in
  'Linux') alias ls='ls --color=auto' ;;
  'Darwin') alias ls='ls -G' ;;
esac

alias grep='grep --color=auto'
alias path='echo $PATH | sed "s/:/\n/g"'
alias irb='irb --readline'
#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias date-simple='date +%Y%m%d'
alias ds='date-simple'
#alias dateiso="\date --iso-8601=seconds | sed 's/:/./g'" # date format suitable for file names
alias date-iso="date +%Y%m%dT%H%M%S"
alias di='date-iso'
alias less='less -R'
# alias xargs='xargs -I{}'
alias ack="ack --pager='less -R'"
alias myfind="find . -not -path './.git/*'"
alias disable_history="export HISTFILE=''"

# alias pip2="pip2 --install-option=\"--prefix=$HOME/local/pip2\""
# alias pip"pip --install-option=\"--prefix=$HOME/local/pip3\""

alias chrome-dev="google-chrome --user-data-dir=$HOME/.chrome/development"
# alias pacman="pacman-color"
alias tmux-copy="tmux show-buffer | xclip -i -selection clipboard"
alias tmux-paste='tmux set-buffer "$(xclip -o -selection clipboard)"; tmux paste-buffer'
# alias eclipse='/home/jack/opt/eclipse/eclipse'

# jcat() {
#   for file in "$@"; do
#     filetype=$(file $file)
#     case $filetype in
#       "*gzip compresed data*")
#         printf "gzip\n"
#         ;;
#       "*ASCII text*")
#         printf "plaintext\n"
#         ;;
#     esac
#     # if grep
#     # printf "$filetype\n"
#   done
# }


memorizable_password() {
  shuf -n ${1:-4} /usr/share/dict/usa --random-source=/dev/random
}
# alias mplayer='mplayer-resumer'

# # allows speeding up playback without raising pitch
# # useful for watching tech talks
# # http://shreevatsa.wordpress.com/2009/05/29/mplayer-changing-speed-without-changing-pitch-avoiding-the-chipmunk-effect/
# mplayer_anti_chipmonk="-af scaletempo"

# mplayer_resumer_wrapper() {
#   # http://stackoverflow.com/questions/1853946/getting-the-last-argument-passed-to-a-shell-script/1854031
#   for last_arg; do true; done

#   if [ ! -f $last_arg ]; then
#     printf "File not found: $last_arg\n" >&2
#     return
#   fi

#   if [ -f .mplayer-no-resume ]; then
#     mplayer $*
#     return
#   fi

#   # if I was impatient and starting playing this video before chrome finished
#   # downloading it, I want to preserve progress in the completed video
#   partial_resume=".${last_arg}.crdownload.resume"
#   if [ -f $partial_resume ]; then
#     # echo $partial_resume ${partial_resume%%.crdownload.resume}.resume
#     mv "$partial_resume" "${partial_resume%%.crdownload.resume}.resume"
#   fi

#   # If I'm try to play a crdownload file when it has completed downloading,
#   # play the completed version with progress
#   #
#   # Without this, the default behaviour with mplayer-resumer is to zero the
#   # progress and exit.
#   if [ ! -f $last_arg ] && [ -f ${last_arg%%.crdownload} ]; then
#     partial_resume=".${last_arg}.resume"
#     if [ -f "$partial_resume" ]; then
#       mv "$partial_resume" "${partial_resume%%.crdownload.resume}.resume"
#     fi
#     last_arg=${last_arg%%.crdownload}
#   fi

#   mplayer-resumer $*
# }

mpv_wrapper() {
  if [ -f .mplayer-no-resume ]; then
    mpv --no-resume-playback $*
  else
    mpv $*
  fi
}
# alias mplayer="mplayer_resumer_wrapper -vo vaapi -keepaspect -monitoraspect 16:9 -softvol -softvol-max 500 $mplayer_anti_chipmonk"
alias mplayer="mpv_wrapper"

# alias mplayer="mplayer -vo vaapi -keepaspect -monitoraspect 16:9 -softvol -softvol-max 500 $mplayer_anti_chipmonk"
# alias mplayer="mplayer -vo vaapi -keepaspect -monitoraspect 16:9 $mplayer_anti_chipmonk"
alias fontforge='fontforge -nosplash'
alias npm='PATH=$HOME/python2:$PATH npm'

alias psdownload=$HOME/code/plowshare/src/download.sh
psdownload_links() {
  for link in $(cat $1); do
    psdownload $link
  done
}
alias json-tnet=$HOME/code/json-tnet/json-tnet
alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"

#alias e="emacsclient"
#alias emacs="emacsclient"

alias redonew="PATH=$HOME/python2:$PATH $HOME/code3/redo/redo"

function custom-repo-add {
  # set -e
  /usr/bin/repo-add /opt/pkg/custom.db.tar.gz $1
  cp --link $1 /opt/pkg
}

function custom-repo-remove {
  # set -e
  /usr/bin/repo-remove /opt/pkg/custom.db.tar.gz $1
  printf "Removed $1 from custom.db index. Now manually remove package file from /opt/pkg." >&2
  # rm ~/pkgrepo/$(basename $1)
}

alias vime="vim -u $HOME/.vim/vimencrypt -x"
# alias cpufreq-info="cpufreq-info| highlight.sh '\".*\"' 85'"

# watch a directory recursively, printing a line containing the filename with every file change
# usage: recursive_watch $PWD
# tested with vim
# tries to filter out vim's temp file operations
alias recursive_watch='inotifywait -mr -e ClOSE_WRITE,DELETE --exclude "(.*\.sw[:alpha:]?|.*~|[0-9]+|.*/\.git/.*)"'
sha256_64() {
  openssl dgst -binary -sha256 $1 | \
  openssl base64                | \
  tr '+' '-'                    | \
  tr '/' '_'                    | \
  tr -d '='
}

base64_base64url() {
  tr '+' '-' | tr '/' '_'
}

base64url_base64() {
  tr '-' '+' | tr '_' '/'
}

attach-ssh-agent() {
  # mkdir -p ~/.ssh-agent
  socket=$(find /tmp/ssh-* -type s)
  if [ "$socket" = "" ]; then
    ssh-agent
    socket=$(find /tmp/ssh-* -type s)
  fi
  export SSH_AUTH_SOCK=$socket
  if [ "$TMUX" != "" ]; then
    tmux set-environment SSH_AUTH_SOCK $socket
  fi
}

bitbucket-create() {
  if [ "$1" != "" ]; then
    project_name=$1
  else
    project_name=$(basename $PWD)
  fi
  curl -X POST -u $(cat ~/secure/bitbucket-credentials) https://api.bitbucket.org/1.0/repositories/ -d name=$project_name -d scm=git -d is_private=True
}

bitbucket-create-hg() {
  if [ "$1" != "" ]; then
    project_name=$1
  else
    project_name=$(basename $PWD)
  fi
  curl -X POST -u $(cat ~/secure/bitbucket-credentials) https://api.bitbucket.org/1.0/repositories/ -d name=$project_name -d scm=hg -d is_private=True
}

bitbucket-list() {
  curl -u $(cat ~/secure/bitbucket-credentials) https://api.bitbucket.org/1.0/user/repositories/
}

add-bitbucket-remote() {
  if [ "$1" != "" ]; then
    project_name=$1
  else
    project_name=$(basename $PWD)
  fi
  # git remote add bitbucket git@bitbucket.org:moonboots/$project_name

  # expects "bitbucket" to be configured in ~/.ssh/config
  git remote add bitbucket bitbucket:moonboots/$project_name
}

add-bitbucket-remote-https() {
  if [ "$1" != "" ]; then
    project_name=$1
  else
    project_name=$(basename $PWD)
  fi

  git remote add bitbucket-https https://moonboots@bitbucket.org/moonboots/$project_name
}

# tmux copy
tmuxc() {
  # copy arg if present
  if [ -n "$1" ]; then
    tmux set-buffer $1
  # else copy stdin
  else
    read content
    tmux set-buffer $content
  fi
}

# A shortcut function that simplifies usage of xclip.
# - Accepts input from either stdin (pipe), or params.
# - If the input is a filename that exists, then it
#   uses the contents of that file.
# ------------------------------------------------
cb() {
  local _scs_col="\e[0;32m"; local _wrn_col='\e[1;31m'; local _trn_col='\e[0;33m'
  # Check that xclip is installed.
  if ! type xclip > /dev/null 2>&1; then
    echo -e "$_wrn_col""You must have the 'xclip' program installed.\e[0m"
  # Check user is not root (root doesn't have access to user xorg server)
  elif [[ "$USER" == "root" ]]; then
    echo -e "$_wrn_col""Must be regular user (not root) to copy a file to the clipboard.\e[0m"
  else
    # If no tty, data should be available on stdin
    if ! [[ "$( tty )" == /dev/* ]]; then
      input="$(< /dev/stdin)"
    # Else, fetch input from params
    else
      input="$*"
    fi
    if [ -z "$input" ]; then  # If no input, print usage message.
      echo "Copies a string or the contents of a file to the clipboard."
      echo "Usage: cb <string or file>"
      echo "       echo <string or file> | cb"
    else
      # If the input is a filename that exists, then use the contents of that file.
      # if [ -e "$input" ]; then input="$(cat $input)"; fi
      # Copy input to clipboard
      echo -n "$input" | xclip -selection c
      # Truncate text for status
      if [ ${#input} -gt 80 ]; then input="$(echo $input | cut -c1-80)$_trn_col...\e[0m"; fi
      # Print status.
      echo -e "$_scs_col""Copied to clipboard:\e[0m $input"
    fi
  fi
}

gen_password() {
  shuf -n ${1:-4} /usr/share/dict/usa --random-source=/dev/random
}

# dmenu_path() {
#   local cache=$HOME/.cache/dmenu_run
#   printf "google-chrome
# }

sv() {
  start="\\o033[38;05;"
  end_color="m"
  end="\\o033[0m"

  # sed_args="${sed_args} -e \"s/$regex/${start_color_def}${color}${end_color_def}&${end}/g\""

  green=118
  red=160
  # $(which --skip-functions sv) $@
  /usr/bin/sv -v $@ | column -t -s ';' \
    | sed -e "s/run/${start}${green}${end_color}&${end}/g" \
          -e "s/down/${start}${red}${end_color}&${end}/g"
}

# http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias sudo='sudo '

[ -f ~/.bash_aliases.system_dependent ] && source ~/.bash_aliases.system_dependent

# https://gist.github.com/jcamenisch/1671995
gg_replace() {
  if [[ "$#" == "0" ]]; then
    echo 'Usage:'
    echo '  gg_replace term replacement file_mask'
    echo
    echo 'Example:'
    echo '  gg_replace cappuchino cappuccino *.html'
    echo
  else
    find=$1; shift
    replace=$1; shift

    ORIG_GLOBIGNORE=$GLOBIGNORE
    GLOBIGNORE=*.*
    
    if [[ "$#" = "0" ]]; then
      set -- ' ' $@
    fi

    while [[ "$#" -gt "0" ]]; do
      for file in `git grep -l $find -- $1`; do
        sed -e "s/$find/$replace/g" -i'' $file
      done
      shift
    done

    GLOBIGNORE=$ORIG_GLOBIGNORE
  fi
}

encrypt() {
  gpg \
    --no-default-keyring \
    --keyring ~/bootstrap/keys/key.pub \
    -er "Jack Z" \
    --trust-model always \
    --encrypt \
    --verbose \
    $1
}

encrypt4096() {
  gpg \
    --no-default-keyring \
    --keyring ~/secure/backup/keys/key-rsa-4096.pub \
    -er "Jack Z" \
    --trust-model always \
    --encrypt \
    --cipher-algo AES256 \
    --verbose \
    $1
}

decrypt() {
  gpg \
    --no-default-keyring \
    --keyring ~/bootstrap/keys/key.pub \
    --secret-keyring ~/bootstrap/keys/key.sec \
    $1
}

virtualbox_init() {
  sudo modprobe vboxdrv
  sudo modprobe vboxnetflt
}

ubuntu_remove_old_kernels() {
  # http://askubuntu.com/questions/2793/how-do-i-remove-or-hide-old-kernel-versions-to-clean-up-the-boot-menu
  sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')
}

alias youtube-dl='python2 ~/code/youtube-dl/youtube_dl/__main__.py --no-mtime --no-part'
# alias dkms_install='sudo dkms install vboxhost/$(pacman -Q virtualbox|awk {"print $2"}|sed "s/\-.\+//")'
dkms_install() {
  sudo dkms install vboxhost/$(pacman -Q virtualbox|awk '{print $2}' | sed "s/\-.\+//") -k $(uname -rm|sed "s/\ /\//")
}
alias disable_screen_blanking='xset -dpms; xset s off'
alias android-studio="_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.xrender=true' android-studio"
alias scanimage="scanimage --resolution 300"
alias feh-browse="feh -g 640x480 -d -S filename ."

alias sc=systemctl

# no pulse audio output without this env variable
# alias skype="PULSE_LATENCY_MSEC=60 skype"

random_wallpaper() {
  xloadimage -onroot -fullscreen "$HOME/bgs/$(ls ~/bgs | shuf | head -n 1)"
}

alias wget-offline=" wget \
 --recursive \
 --no-clobber \
 --page-requisites \
 --adjust-extension \
 --convert-links \
 --restrict-file-names=windows \
 --no-parent"

# vim: set ft=sh:
