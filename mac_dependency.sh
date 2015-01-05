#Mac OS
# install homebrew
brew -v
if [ ! $? -eq 0 ]
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

function install_app {
    if [ $# -lt 2 ]; then
        echo "Invalid arguments for install_app: $@"
        exit 1
    fi
    local install_cmd
    local i
    i=0
    for arg in "$@"; do
        if [ $i -eq 0 ]; then
            install_cmd="$arg"
        else
            $install_cmd list $arg
            if [ ! $? -eq 0 ]; then
                $install_cmd install $arg
            fi
        fi
        i=$[$i+1]
    done
}

install_app 'brew' ctags-exuberant brew-cask
install_app 'brew cask' alfred day-o gitx ichm
