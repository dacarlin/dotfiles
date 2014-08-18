mkdir orig_dotfiles
for dotfile in .Rprofile .bashrc .bash_profile \
               .vimrc .pymolrc .gitignore .gitconfig
do
  mv ~/$dotfile orig-dotfiles/$dotfile-orig
  ln -s $dotfile ~/$dotfile
done
