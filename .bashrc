export PS1='\[\033[0;37m\]\n\d \t \w\[\033[0m\]\n\u@\h$ '
#ugly, right? Gives a light gray prompt with date, time, and wd

export PYTHONSTARTUP=~/.pythonrc
source ~/.git-completion.bash

alias ep="ssh carlin@epiphany.genomecenter.ucdavis.edu"
alias lab="ssh alex@dhcp28-gc4.genomecenter.ucdavis.edu"
alias otis="ssh carlin@otis.genomecenter.ucdavis.edu"
alias air="" # a man can dream...

export lab=alex@dhcp28-gc4.genomecenter.ucdavis.edu
export ep=carlin@epiphany.genomecenter.ucdavis.edu
export otis=carlin@otis.genomecenter.ucdavis.edu

case "$HOSTNAME" in 
  epiphany.genomecenter.ucdavis.edu) export r=/home/carlin/Rosetta ;;
  *) export r=/Applications/Rosetta ;;
esac 
export rbin=$r/main/source/bin/
export rdb=$r/main/database/
export rpy=$r/main/source/src/python/apps/public/
export PATH=$PATH:$rbin:$rpy

alias pymol="open -a MacPyMOL"
alias ls="ls -lhoFG"
alias cp="cp -i"
alias rm="rm -i"
tr() { mv "$@" ~/.Trash/; }
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
