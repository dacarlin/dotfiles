HISTFILE=~/.histfile
setopt appendhistory autocd beep nomatch
bindkey -v
autoload -Uz compinit promptinit
compinit
promptinit
prompt walters
alias ls="ls -lhgG"
