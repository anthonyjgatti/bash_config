#!/bin/bash

sudo yum install vim -y
sudo cp ~/bash_config/.vim/colors/monokai.vim /usr/share/vim/vim74/colors
cp -r ~/bash_config/.bash_profile ~/.bash_profile
echo 'alias vim="vim -u ~/bash_config/"' >> ~/.bash_profile
source ~/.bash_profile

