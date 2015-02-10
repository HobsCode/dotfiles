# Ease
alias ..='cd ..'
alias l='ls -lAhp'
alias rm='rm -iv'
alias tar='tar -zcvf'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'
alias emacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias wget='wget -c'
alias top='htop'
a () { touch $1; open -a atom $1; }
alias bitrate='mp3info -r a -p "File: %f ¯\\\_(ツ)_/¯ Bitrate: %r\n"'
nap () { sleep $((60*$1)); }

# Taste
export PS1="\[\033[01;37m\]\$?\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\"; else echo \"\[\033[01;31m\]\"; fi) \[\033[01;34m\] \w \$\[\033[00m\] "
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'

# History
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Software
export EDITOR="/usr/local/bin/atom"

# Go
export GOROOT=$HOME/go
export PATH=/usr/local/bin:$PATH:$GOROOT/bin

# Optical Health
crontab -r
crontab ~/.crontab

# _ _ _ _ _
source ~/.bash_private
