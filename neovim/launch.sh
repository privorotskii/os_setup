#!/bin/bash

# do preparing steps for neovim installation
apt-get install software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update

#neovim installation and configuration
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip
if [ -f ~/.config/nvim/init.vim ]; then
 mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.back
fi
mkdir -p ~/.config/nvim && cp init.vim "$_"

#vundle installation
mkdir -p ~/.config/nvim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

#install plugins
nvim +PluginInstall +qall
sudo apt install build-essential cmake python3-dev
cd ~/.config/nvim/bundle/YouCompleteMe
python3 install.py --all
