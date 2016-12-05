#!/bin/sh

brew install wget
git clone https://github.com/fritzvd/dotfiles.git ~/.dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.dotfiles
./script/bootstrap
./script/install

wget -O - https://bootstrap.pypa.io/get-pip.py | sudo python

# set xfce terminal
# gsettings set org.gnome.desktop.default-applications.terminal exec 'xfce4-terminal'

exit;
