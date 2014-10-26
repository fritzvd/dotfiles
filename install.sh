#!/bin/sh

sudo apt-get install -y git-core vim build-essential ipython ruby2.0
git clone https://github.com/fritzvd/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
./script/install

mkdir .tmp
cd .tmp
wget https://www.vagrantup.com/downloads
wget `python ~/.dotfiles/latest_vagrant.py`
sudo dpkg -i *.deb
