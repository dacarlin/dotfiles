bind 'TAB:menu-complete'
export PS1='\[\033[0;37m\]\n\d \t \w\[\033[0m\]\n\u@\h$ '
#ugly, right? Gives a light gray prompt with date, time, and wd

export PYTHONSTARTUP=~/.pythonrc

alias ep="ssh carlin@epiphany.genomecenter.ucdavis.edu"
alias lab="ssh alex@dhcp28-gc4.genomecenter.ucdavis.edu"
alias otis="ssh carlin@otis.genomecenter.ucdavis.edu"
alias air="" # a man can dream...

export lab=alex@dhcp28-gc4.genomecenter.ucdavis.edu
export ep=carlin@epiphany.genomecenter.ucdavis.edu
export otis=carlin@otis.genomecenter.ucdavis.edu

case "$( uname )" in 
  Linux) export r=/home/carlin/Rosetta ;;
  Darwin) export r=/Applications/Rosetta ;;
esac 
export rbin=$r/main/source/bin
export ROSETTA3_DB=$r/main/database
export rpy=$r/main/source/src/python/apps/public
export PATH=/usr/local/bin:$PATH:$rbin:$rpy:~/bin

alias pymol="open -a MacPyMOL"
alias cp="cp -i"
tr() { mv "$@" ~/.Trash/; }
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
alias f="open -a Finder"
