dotfiles
========

Configuration files for vim, bash, pymol, and zsh. Also (secretly) where I'm gonna work on some "we needs"


Plans
-----

First thing is to figure out how to keep these files in ```bash /Users/alex/``` without making ```/Users/alex/``` a git repository. (I guess you could initialize a git repo and tell it to ignore ```Documents/```, ```Desktop```, etc.) Why not keep a git repo in ```bash Documents/``` and symlink them into ```~```?


Included
--------

+ .vimrc
+ .bashrc
+ .bash_profile
+ .pymolrc
+ cron/launchd scheduler
+ .move_in
+ 


### We needs

The idea of the cron scheduler is simple: keep Rosetta up to date and freshly complied on a sechdule. 

.move_in would set you up on a new machine, similar to some ```.osx``` scripts that floted around HN a few years back. 
