#!/bin/bash
# Author: aiyoyo
# create time   : 2023-02-14 01:43:10
# last modified : 2023-02-14 01:43:10

# for vim
mkdir ~/vimrc
cp -r * ~/vimrc
cp ".vimrc" ~

# for neovim
mkdir ~/.config/nvim
cat > ~/config/nvim/init.vim <<EOF
set runtimepath^=~/.vim
let &packpath = &runtimepath
source ~/.vimrc  " Source Vimrc file
EOF
