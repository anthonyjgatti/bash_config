#!/bin/bash

# TODO: Check git integration.

# Specify directory on which we've mounted our config.
# This can either be a mount point, or cloned.
MOUNT_DIR=/code

# Install git and tmux as needed.
# TODO: Add other OS support.
sudo yum install git -y
sudo yum install vim -y
sudo yum install epel-release -y
sudo yum install tmux -y

# Copy configuration to $HOME directory.
cp $MOUNT_DIR/bash_config/.vim/colors/monokai.vim /usr/share/vim/vim74/colors
cp -rf $MOUNT_DIR/bash_config/.vim ~/.vim
cp -r $MOUNT_DIR/bash_config/.vimrc ~/.vimrc
cp -r $MOUNT_DIR/bash_config/.bash_profile ~/.bash_profile
source ~/.bash_profile

