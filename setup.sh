#!/bin/sh

sudo apt-get install -y git
sudo apt-get install -y vim 
sudo apt-get install -y build-essential 
sudo apt-get install -y htop
sudo apt-get install -y lxc
sudo apt-get install -y lxc-templates
sudo apt-get install -y cgroup-lite
sudo apt-get install -y redir
sudo apt-get install -y curl
sudo apt-get install -y tmux
sudo apt-get update && sudo apt-get upgrade -y

# node stuff
curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get update
sudo apt-get install nodejs -y

git clone https://github.com/fritzvd/dotfiles.git ~/.dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.dotfiles
./script/bootstrap
./script/install

wget -O - https://bootstrap.pypa.io/get-pip.py | sudo python

# set xfce terminal
# gsettings set org.gnome.desktop.default-applications.terminal exec 'xfce4-terminal'

exit;
