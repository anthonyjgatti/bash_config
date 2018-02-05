#!/bin/bash

# TODO: Check git integration.

# Specify directory on which we've mounted our config.
# This can either be a mount point, or cloned.
MOUNT_DIR=/code

# Install tmux as needed.
# TODO: Add other OS support.
sudo yum install tmux -y

# Set up Vundle.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy configuration to $HOME directory.
cp $MOUNT_DIR/bash_config/.vim/colors/monokai.vim /usr/share/vim/vim74/colors
cp $MOUNT_DIR/bash_config/.vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
cp -r $MOUNT_DIR/bash_config/.vimrc ~/.vimrc
cp -r $MOUNT_DIR/bash_config/.bash_profile ~/.bash_profile
source ~/.bash_profile

