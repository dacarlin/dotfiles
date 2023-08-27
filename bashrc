#export PS1='\[\033[0;37m\]\n\d \t \w (\j)\[\033[0m\]\n\u@\h$ '
export HISTSIZE=10000
bind 'TAB:menu-complete'

alias s="git status"
alias f="open -a Finder ." 

function tunnel() {
  echo 'usage: tunnel {local port} {remote hostname, preferably in SSH config}' 
  ssh -N -f -L localhost:$2:localhost:8888 $2
} 
