mkdir orig_dotfiles
for dotfile in .bashrc .bash_profile .vimrc .pythonrc .pymolrc .gitignore .gitconfig
do
  mv ~/$dotfile orig-dotfiles/$dotfile-orig
  ln -s $dotfile ~/$dotfile

done
