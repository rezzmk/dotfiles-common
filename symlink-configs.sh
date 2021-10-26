#!/bin/bash

# Vim stuff
ln -s ~/.dotfiles/common/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/common/vim/ideavimrc ~/.ideavimrc

if ! [ -d "~/.vim/bundle" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
fi
