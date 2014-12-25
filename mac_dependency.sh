#Mac OS
# install homebrew
brew -v
if [ ! $? -eq 0 ]
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install exuberant ctags for tagbar
brew list ctags
if [ ! $? -eq 0 ]
then
    brew install ctags-exuberant
fi

# install brew cask
brew list brew-cask
if [ ! $? -eq 0 ]
then
    brew install caskroom/cask/brew-cask
fi
