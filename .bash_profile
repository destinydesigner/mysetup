export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GMOCK_INCLUDE_PATH=$HOME/test/gmock-1.7.0/include
export GTEST_INCLUDE_PATH=$HOME/test/gmock-1.7.0/gtest/include
export GMOCK_LIB_PATH=$HOME/test/gmock-1.7.0/lib/.libs
export GTEST_LIB_PATH=$HOME/test/gmock-1.7.0/gtest/lib/.libs
export GMOCK_DIR=$HOME/test/gmock-1.7.0
export GTEST_DIR=$HOME/test/gmock-1.7.0/gtest

PATH=$PATH\:/opt/local/bin
PATH=$PATH\:/$HOME/tools/xgo
PATH=$PATH\:/$HOME/software/bin
PS1="\u@\h:\w\n\$ "

alias ll='ls -l'
alias l='ll -a'
alias '..'='cd ..'
alias 'gprolog'='/opt/local/bin/gprolog'
#alias 'ctags'='/usr/local/bin/ctags'
alias tree='tree -C'
alias grep='grep --color'
# alias touch="$HOME/bin/touch.sh"


unamestr=`uname`
echo $unamestr
if [[ "$unamestr" == "Linux" ]]
then
    #Linux
    alias ls='ls --color=always'
elif [[ "$unamestr" == "Darwin" ]]
then
    #Mac OS
    # Setting PATH for Python 3.4
    # The orginal version is saved in .bash_profile.pysave
    PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
    export GOPATH=$HOME/bin/go_tour
    export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/
    export PATH
fi

# some sensitive data like token and passwd. this file should never be commited.
# add sensitive.sh in .gitignore
source sensitive.sh
