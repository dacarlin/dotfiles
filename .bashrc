# Colorize and annotate ls output by default
alias ls='ls -FG'

# Prompt with working directory 
export PS1='\w\n\$ '

# Rosetta 
export ROSETTA_BIN=/Applications/Rosetta/main/source/bin
export ROSETTA_DB=/Applications/Rosetta/main/database

# Quick open PyMOL from command line
alias pymol="open -a MacPyMOL"

# Set Python startup file
export PYTHONSTARTUP=~/.pythonrc

alias ep="ssh carlin@epiphany.genomecenter.ucdavis.edu"
alias lab="ssh alex@dhcp28-gc4.genomecenter.ucdavis.edu"
alias air=""

# I think this gets read in by zsh too...
