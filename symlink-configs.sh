#!/bin/bash

# Vim stuff
ln -s ~/.dotfiles/common/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/common/vim/ideavimrc ~/.ideavimrc
ln -s ~/.dotfiles/common/vim/vimrc_base ~/.vimrc_base
ln -s ~/.dotfiles/common/vim/vimrc_remaps_common ~/.vimrc_remaps_common

if ! [ -d "~/.vim/bundle" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
fi
