DISABLE_UPDATE_PROMPT=true
ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"
plugins=(emoji-clock git colored-man colorize github brew zsh-syntax-highlighting pip python git-flow subl osx autojump)
export ZSH=/Users/johnmaris/.oh-my-zsh
export PATH="/usr/local/bin:/usr/local/Cellar:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin:/Users/johnmaris/go/bin"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='subl'

source $ZSH/oh-my-zsh.sh

alias l='ls -lAhp'
alias rm='rm -iv'
alias tar='tar -zcvf'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'
alias wget='wget -c'
alias top='htop'
alias bitrate='mp3info -r a -p "File: %f ¯\\\_(ツ)_/¯ Bitrate: %r\n"'
alias history='fc -lfd 1'

green='\033[0;32m'
no_color='\033[0m'

nap () {
  sleep $((60*$1))
  spotify play $2
  emoji-clock
}

pdfify () {
	for i in $@; do
		name=$(basename $i)
		location=~/notes/pdf/${name:0:-3}.pdf
		echo -e "${green}pdfifying:${no_color}" $location
		pandoc -f markdown_github+tex_math_dollars -t latex -s --mathjax -V geometry:margin=0.6in -o $location $i
		open $location
	done
  emoji-clock
}

cl () {
	cd $1
	l .
}

sgit () {
	git add --all
	git commit -am $1
	git push origin master
}