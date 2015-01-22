#!/bin/sh --
# install pip
sudo python get-pip.py

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install exuberant ctags for tagbar
brew install ctags-exuberant

unamestr=$(uname)
echo "$unamestr"

if [ "$unamestr" = "Linux" ]
then
    #Linux
    echo "Linux"
elif [ "$unamestr" = "Darwin" ]
then
    sh mac_dependency.sh
else
    echo "Unknown"
    return -1
fi

# install pip
pip -V
if [ ! $? -eq 0 ]
then
    sudo python get-pip.py
fi

# install rails
rails -v
if [ ! $? -eq 0 ]
then
    sudo gem install rails
fi
