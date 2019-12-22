#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# install tmux and tmuxinator
apt -y install tmux gem
gem install tmuxinator

# backup tmux conf if exists
if [ -f ~/.tmux.conf ]; then
 mv ~/.tmux.conf ~/.tmux.conf.back
fi

# copy tmux.conf
cp .tmux.conf ~/.tmux.conf

# download tmuxinator completion helper
# it is expected, that we use zsh
mkdir -p ~/.bin
wget -O ~/.bin/tmuxinator.zsh https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh

# add tmuxinator completion executing to the zshrc
if ! grep -q 'source ~/.bin/tmuxinator.zsh' ~/.zshrc; then
  echo 'source ~/.bin/tmuxinator.zsh' >> ~/.zshrc
fi

# add default editor if none exists yet
if ! grep -q 'export EDITOR' ~/.zshrc; then
  echo "export EDITOR='nvim'" >> ~/.zshrc
fi

source ~/.zshrc
