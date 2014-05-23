export PS1='\[\033[0;37m\]\n\d \t \w\[\033[0m\]\n\u@\h$ '
#ugly, right? Gives a light gray prompt with date, time, and wd
export PATH=$PATH:/Applications/Rosetta/main/source/bin/
export PYTHONSTARTUP=~/.pythonrc
source ~/.git-completion.bash

alias ep="ssh carlin@epiphany.genomecenter.ucdavis.edu"
alias lab="ssh alex@dhcp28-gc4.genomecenter.ucdavis.edu"
alias air="" # a man can dream...

export lab=alex@dhcp28-gc4.genomecenter.ucdavis.edu
export ep=carlin@epiphany.genomecenter.ucdavis.edu

alias cawk="gawk -F', ' " 
alias pymol="open -a MacPyMOL"
alias ls="ls -lhoFG"
alias cp="cp -i"
alias rm="rm -i"
tr() { mv "$@" ~/.Trash/; }
