#!/bin/sh

sudo apt-get install git-core vim build-essential ipython numpy ruby2.0
git clone git@github.com:fritzvd/dotfiles ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
./script/install

mkdir .tmp
cd .tmp
wget https://www.vagrantup.com/downloads
wget `python ~/.dotfiles/latest_vagrant.py`
sudo dpkg -i *.deb
