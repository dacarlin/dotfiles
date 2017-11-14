# Al's settings 
export HISTSIZE=10000
bind 'TAB:menu-complete'

# Useful aliases 
trash() { mv "$@" ~/.Trash/ ;}
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias s="git status"
alias f="open -a Finder ." 

# Anaconda
export PATH="/Users/alex/anaconda3/bin:$PATH"

# Cargo 
export PATH="$HOME/.cargo/bin:$PATH"
