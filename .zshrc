DISABLE_UPDATE_PROMPT=true
ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"
plugins=(git colored-man colorize github brew zsh-syntax-highlighting pip python git-flow atom)
export ZSH=/Users/johnmaris/.oh-my-zsh
export PATH="/usr/local/bin:/usr/local/Cellar:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin:/Users/johnmaris/go/bin"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='atom'

source $ZSH/oh-my-zsh.sh

alias l='ls -lAhp'
alias rm='rm -iv'
alias tar='tar -zcvf'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'
alias wget='wget -c'
alias top='htop'
alias bitrate='mp3info -r a -p "File: %f ¯\\\_(ツ)_/¯ Bitrate: %r\n"'
nap () { sleep $((60*$1)); }
