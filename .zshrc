HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch
bindkey -v
zstyle :compinstall filename '/Users/alex/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit
prompt walters
alias ls="ls -lhFG"
