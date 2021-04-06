export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GMOCK_INCLUDE_PATH=$HOME/test/gmock-1.7.0/include
export GTEST_INCLUDE_PATH=$HOME/test/gmock-1.7.0/gtest/include
export GMOCK_LIB_PATH=$HOME/test/gmock-1.7.0/lib/.libs
export GTEST_LIB_PATH=$HOME/test/gmock-1.7.0/gtest/lib/.libs
export GMOCK_DIR=$HOME/test/gmock-1.7.0
export GTEST_DIR=$HOME/test/gmock-1.7.0/gtest

# java
export CLASSPATH=~/workspace/weka/mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar:$CLASSPATH

PATH=/usr/local/bin:$PATH
PATH=/$HOME/bin:$PATH
PATH=$PATH:/opt/local/bin
PATH=$PATH:/$HOME/tools/xgo
PATH=$PATH:/$HOME/software/bin
PATH=$PATH:~/go/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PATH="/usr/local/opt/go@1.13/bin:$PATH"
export PATH="/usr/local/opt/go@1.14/bin:$PATH"
PS1="\u@\h:\w\n\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

alias ll='ls -l'
alias l='ll -a'
alias '..'='cd ..'
alias 'gprolog'='/opt/local/bin/gprolog'
#alias 'ctags'='/usr/local/bin/ctags'
alias tree='tree -C'
alias grep='grep --color'
alias tmux="TERM=screen-256color-bce tmux"
# alias touch="$HOME/bin/touch.sh"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.4/bin"
export PATH

unamestr=$(uname)
if [[ "$unamestr" == "Linux" ]]
then
    echo "$unamestr"
fi

unamestr=$(uname)
echo "$unamestr"
if [[ "$unamestr" == "Linux" ]]
then
    #Linux
    alias ls='ls --color=always'
elif [[ "$unamestr" == "Darwin" ]]
then
    #Mac OS
    # Setting PATH for Python 3.4
    # The orginal version is saved in .bash_profile.pysave
    PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.4/bin"
    PATH="${PATH}:/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/"
    CPATH=$(brew --prefix openssl):$CPATH
    export LIBRARY_PATH=$LIBRARY_PATH:$(brew --prefix openssl)/lib/
    export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/
    export PATH
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
fi

# some sensitive data like token and passwd. this file should never be commited.
# add sensitive.sh in .gitignore
source sensitive.sh
source ~/git-completion.bash
source /usr/local/bin/virtualenvwrapper.sh
git config --global alias.st status
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.6/bin"
export PATH
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
export PATH="/usr/local/sbin:$PATH"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fanggj/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/fanggj/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fanggj/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/fanggj/Downloads/google-cloud-sdk/completion.bash.inc'; fi

GITLAB_TOKEN=VkK_z2Ziwo7DpLqMWdLi
