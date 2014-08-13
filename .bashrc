bind 'TAB:menu-complete'
export $EDITOR=vim
export PS1='\[\033[0;37m\]\n\d \t \w\[\033[0m\]\n\u@\h$ '
#ugly, right? Gives a light gray prompt with date, time, and wd
export HISTSIZE=10000
export PYTHONSTARTUP=~/.pythonrc
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias ep="ssh carlin@epiphany.genomecenter.ucdavis.edu"
alias lab="ssh alex@dhcp28-gc4.genomecenter.ucdavis.edu"
alias otis="ssh carlin@otis.genomecenter.ucdavis.edu"
alias air="" # a man can dream...
alias wou="ssh wouferton.com@s45900.gridserver.com"
alias q=qstat
alias qa="qstat -u \*"

export lab=alex@dhcp28-gc4.genomecenter.ucdavis.edu
export ep=carlin@epiphany.genomecenter.ucdavis.edu
export otis=carlin@otis.genomecenter.ucdavis.edu
export wou=wouferton.com@s45900.gridserver.com

case "$( uname )" in 
  Linux) export r=/home/carlin/Rosetta && export b=linuxgcc ;;
  Darwin) export r=/Applications/Rosetta && export b=macosclang ;;
esac 
export rbin=$r/main/source/bin
export ROSETTA3_DB=$r/main/database
export rpy=$r/main/source/src/python/apps/public
export PATH=/usr/local/bin:$PATH:$rbin:$rpy:~/bin

alias pymol="open -a MacPyMOL"
alias cp="cp -i"
trash() { mv "$@" ~/.Trash/; }
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
alias f="open -a Finder"
alias ll="ls -halFG"

export PATH=$PATH:/Applications/MacPyMOL.app/Contents/MacOS

diff-pdb() {
  awk '/^ATOM/ { print $6, $4 }' $1 | uniq > t1
  awk '/^ATOM/ { print $6, $4 }' $2 | uniq > t2
  comm -23 t1 t2 | tr -d ' 0-9' > l1 
  comm -13 t1 t2 > l2
  # make them one-letter codes here if you want (later)
  gpaste l1 l2 | tr -d ' \t' | gpaste -s -d+ | tr A-Z a-z | tee >(pbcopy)
  gpaste l1 l2
  rm t1 t2 l1 l2
}

diff-for-pymol() { 
  echo load $2 > t.pml
  printf "select mutated, resi '$( diff-pdb "$@" | tr -d a-z )'\n" >> t.pml
  echo 'label mutated and n. ca, resn + " " + resi' >> t.pml
  echo show sticks, mutated >> t.pml
  echo load $1 >> t.pml
  echo clean >> t.pml
  echo orient mutated >> t.pml
  MacPyMOL -q t.pml
  rm t.pml
}

dd() { diff-pdb "$@" && diff-for-pymol "$@" ; } 

sd() { # smart diff 
  python $rpy/pdb2fasta.py $1 | tail -n +2 | fold -w1 > t1
  python $rpy/pdb2fasta.py $2 | tail -n +2 | fold -w1 > t2
  comm -3 t1 t2 
}

uno() { python3 ~/Documents/mo/321.py "$@" ; }
