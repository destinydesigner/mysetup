#!/bin/sh --
# install pip
sudo python get-pip.py

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install exuberant ctags for tagbar
brew install ctags-exuberant

# install rails
rails -v
if [ ! $? -eq 0 ]
then
    sudo gem install rails
fi
