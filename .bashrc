#alex's .bashrc
export PS1='\[\033[0;37m\]\n\d \t \w (\j)\[\033[0m\]\n\u@\h$ '
export HISTSIZE=10000
bind 'TAB:menu-complete'

trash() { mv "$@" ~/.Trash/ ;}
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
alias f="open -a Finder ." 
#alias ll="ls -halFG"
ll() { ls -halFGt | tail +2 | cut -c 30- ;}
today() { date '+%Y-%m-%D' ;}
