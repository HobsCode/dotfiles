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
alias ca='gcalcli quick --calendar=jmaris@stanford.edu'
alias diff='colordiff'

green='\033[0;32m'
no_color='\033[0m'

moon (){ 
	if [ $1 = "--waning" ] ; then 
		uri="spotify:user:mackjaris:playlist:25wZ1fRWCXgtOb6VMgMw7r"
	elif [ $1 = "--full" ] ; then 
		uri="spotify:user:mackjaris:playlist:0MvdJy0TiVA7ep0iMSW8tP"
	elif [ $1 = "--waxing" ] ; then
		uri="spotify:user:mackjaris:playlist:4ajujsodGGHmQo2hqFGvks"
	elif [ $1 = "--new" ] ; then
		uri="spotify:user:mackjaris:playlist:38r3eUWeTE3HfcGQhEgVha"
	fi
	osascript -e "tell application \"Spotify\" to play track \"$uri\""
}


nap () {
  sleep $((60*$1))
  spotify play $2
  emoji-clock
}

pdfify () {
	start_dir=$(pwd)
	cd $1
	folder_name=$(basename $1)
	location=~/notes/pdf/$folder_name.pdf
	echo -e "${green}pdfifying:${no_color}" $folder_name
	pandoc --toc -N --toc-depth=2 -f markdown_github+tex_math_dollars -t latex -s --mathjax --chapters --template=../tex/template.tex -V geometry:margin=0.75in -o $location *.md
	open $location
	cd $start_dir
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

