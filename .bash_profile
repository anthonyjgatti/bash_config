#!/bin/bash

# Change command line prompt.
export PS1="\u@\w$ " 

# Customization of terminal.
export LSCOLORS="ExfxcxdxBxegecabagacad"

# Aliases for environment variables.
export JAVA_HOME=/Library/Java/Home
export CODEDIR=$HOME/code
export CONFIG_DIR=$CODEDIR/bash_config
export PYTHON_PROJECT_DIR=$CODEDIR/python
export JAVA_PROJECT_DIR=$CODEDIR/java
export BASHDIR=$CODEDIR/bash_utils
export GOPATH=$CODEDIR/go
export LICENSEDIR=$CODEDIR/licenses
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin 

# Make directories as needed.
mkdir -p $PYTHON_PROJECT_DIR
mkdir -p $JAVA_PROJECT_DIR
mkdir -p $BASHDIR
mkdir -p $GOPATH

# Alias for Python 3.
if command -v python3 &>/dev/null; then
    alias python='python3'
    alias pip='pip3'
fi

# Alias for custom programs.
# alias pybuild="bash $BASHDIR/python_runner.sh" - FIX THIS
alias docker_cleanup="bash $BASHDIR/docker-cleanup.sh"
alias run_sdc="bash $BASHDIR/run_sdc.sh"

# Project managers - I use these to manage development in various languages.
# mgmt is the main project manager that I use (written in Python) to coordinate across other languages.
export PROJECT_MGMT_DIR=$CODEDIR/project_managers
alias mgmt="$PROJECT_MGMT_DIR/main"

# Git configuration.
git config --global user.email "anthony.j.gatti@gmail.com"
git config --global user.name "anthonyjgatti"

# Bash functional aliases.
alias ls='ls -laGH'
alias v='vim'
alias dl='fc -s'
alias ..='cd ..'

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}


# The next line updates PATH for the Google Cloud SDK.
# TODO: Figure out how to handle this when not on OSX.
if [ -f '/Users/anthony/code/google-cloud-sdk/path.bash.inc' ]; then 
    source '/Users/anthony/code/google-cloud-sdk/path.bash.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anthony/code/google-cloud-sdk/completion.bash.inc' ]; then 
    source '/Users/anthony/code/google-cloud-sdk/completion.bash.inc'; 
fi

# Copy desired files to backup directory for version control.
COLOR_SCHEME="monokai.vim"
cp -fr $HOME/.vimrc $CONFIG_DIR/.vimrc
cp -fr $HOME/.gitconfig $CONFIG_DIR/.gitconfig
cp -fr $HOME/.vim/colors/$COLOR_SCHEME $CONFIG_DIR/.vim/colors/$COLOR_SCHEME
cp -fr $HOME/.bash_profile $CONFIG_DIR/.bash_profile
### Add more here, including check for file changes and then git push.

