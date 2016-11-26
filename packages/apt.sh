#!/usr/bin/bash

# Remove previously added repositories (to remain idempontent)
sudo rm -f /etc/apt/sources.list.d/*

## Repositories
# Adapta GTK theme
sudo apt-add-repository -y ppa:tista/adapta
# Paper icon theme
sudo apt-add-repository -y ppa:snwh/pulp
# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Packages
apps=(
  git
  tmux
  nodejs
  npm
  vim
  ruby
  google-chrome-stable
  firefox
  nvidia-340
  intel-microcode
  unity-tweak-tool
  adapta-gtk-theme
  paper-icon-theme
)

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y "${apps[@]}"
