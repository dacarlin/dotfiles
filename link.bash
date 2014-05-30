#!/bin/bash
rm ~/.bashrc
rm ~/.bash_profile 
rm ~/.vimrc 
rm ~/.pythonrc
rm ~/.pymolrc 
rm ~/.zshrc
rm ~/.gitignore
ln -s /Users/alex/Documents/dotfiles/.bashrc ~/.bashrc
ln -s /Users/alex/Documents/dotfiles/.bash_profile ~/.bash_profile
ln -s /Users/alex/Documents/dotfiles/.vimrc ~/.vimrc
ln -s /Users/alex/Documents/dotfiles/.pythonrc ~/.pythonrc
ln -s /Users/alex/Documents/dotfiles/.pymolrc ~/.pymolrc
ln -s /Users/alex/Documents/dotfiles/.zshrc ~/.zshrc
ln -s /Users/alex/Documents/dotfiles/.gitignore ~/.gitignore
