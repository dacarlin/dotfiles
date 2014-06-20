mkdir orig_dotfiles
mv ~/.bashrc orig_dotfiles/
mv ~/.bash_profile orig_dotfiles/
mv ~/.vimrc orig_dotfiles/
mv ~/.pythonrc orig_dotfiles/
mv ~/.pymolrc orig_dotfiles/
mv ~/.gitignore orig_dotfiles/
mv ~/.gitconfig orig_dotfiles/
ln -s .bashrc ~/.bashrc
ln -s .bash_profile ~/.bash_profile
ln -s .vimrc ~/.vimrc
ln -s .pythonrc ~/.pythonrc
ln -s .pymolrc ~/.pymolrc
ln -s .gitignore ~/.gitignore
ln -s .gitconfig ~/.gitconfig
