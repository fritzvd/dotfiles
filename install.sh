#!/usr/bin/sh

sudo apt-get install git-core vim build-essentials
git clone git@github.com:fritzvd/dotfiles ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
./script/install
