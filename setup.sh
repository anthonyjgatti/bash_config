#!/bin/bash

# Specify directory on which we've mounted our config.
MOUNT_DIR=/code

# Copy configuration to $HOME directory.
sudo cp $MOUNT_DIR/bash_config/.vim/colors/monokai.vim /usr/share/vim/vim74/colors
cp -r $MOUNT_DIR/bash_config/.vimrc ~/.vimrc
cp -r $MOUNT_DIR/bash_config/.bash_profile ~/.bash_profile
source ~/.bash_profile

