#alex's .bashrc
export PS1='\[\033[0;37m\]\n\d \t \w\[\033[0m\]\n\u@\h$ '
export HISTSIZE=10000
bind 'TAB:menu-complete'

#ssh
export lab=alex@dhcp28-gc4.genomecenter.ucdavis.edu && alias lab="ssh $lab"
export ep=carlin@epiphany.genomecenter.ucdavis.edu && alias ep="ssh $ep"
export otis=carlin@otis.genomecenter.ucdavis.edu && alias otis="ssh $otis"
export wou=wouferton.com@s45900.gridserver.com && alias wou="ssh $wou"

#epiphany
qa() { qstat -u \* ;}
q() { qa | awk '{print $4}' | sort | uniq -c ;}

#rosetta
case "$( uname )" in 
  Linux) export r=/home/carlin/Rosetta && export b=linuxgcc ;;
  Darwin) export r=~/Applications/Rosetta && export b=macosclang ;;
esac 
export rbin=$r/main/source/bin
export ROSETTA3_DB=$r/main/database
export rpy=$r/main/source/src/python/apps/public
export PATH=/usr/local/bin:$PATH:$rbin:$rpy:~/bin

#one liners
trash() { mv "$@" ~/.Trash/ ;}
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
alias f="open -a Finder ." 
alias ll="ls -halFG"

#two liners
pawk() { 
  awk '/^AT.*CA/ && NR==FNR {a[$6]=$4;next} /^AT.*CA/ && $4!=a[$6] {
  print a[$6] $6 $4 }' $1 $2 | gpaste -s -d+ | tr A-Z a-z | tee >(pbcopy)
  echo Comparison copied to clipboard
}

pywk() { 
  r=$( pawk $1 $2 | tr -d a-z )
  MacPyMOL $2 -d "sele r, resi $r; pywk" $1 -d "__" >>/dev/null 2>&1 &
}

#pymol
alias pymol="open -a MacPyMOL"
export PATH=$PATH:/Applications/MacPyMOL.app/Contents/MacOS
pm() { MacPyMOL "$@" >>/dev/null 2>&1 & }

#reminders 
mind() { 
  if [[ $# < 1 ]]; then
    cat ~/.minders 
  else
    echo "$( date '+%Y-%m-%d %H:%M:%S' )" "$@" >> ~/.minders
  fi
}
