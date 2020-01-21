#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# install necessary packages
apt install zsh curl git

# install oh my zsh as well
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# backup .zshrc if exists
if [ -f ~/.zshrc ]; then
 mv ~/.zshrc ~/.zshrc.back
fi

# backup .bash_aliases as well
if [ -f ~/.bash_aliases ]; then
 mv ~/.bash_aliases ~/.bash_aliases.back
fi

# copy files
cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases

printf "\nSuccess\nCheck ~/.zshrc, please, and correct the 'export ZSH' line with right username"
printf "\nRun 'source ~/.zshrc' if needed\n\n"