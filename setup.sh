#!/bin/sh

sudo apt-get install -y git-core vim build-essential htop ruby2.0 lxc lxc-templates cgroup-lite redir curl tmux
sudo apt-get update
sudo apt-get dist-upgrade

# node stuff
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update
sudo apt-get install nodejs -y
sudo npm install -g grunt-cli bower

git clone https://github.com/fritzvd/dotfiles.git ~/.dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.dotfiles
./script/bootstrap
./script/install

mkdir -p .tmp
cd .tmp
wget "https://www.vagrantup.com/downloads"
wget "`python ~/.dotfiles/latest_vagrant.py`"
sudo dpkg -i *.deb
vagrant plugin install vagrant-lxc
rm -rf .tmp/

wget -O - https://bootstrap.pypa.io/get-pip.py | python

exit;
