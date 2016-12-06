#!/usr/bin/bash

# Remove previously added repositories (to remain idempontent)
sudo rm -f /etc/apt/sources.list.d/*

## Repositories
# Adapta GTK theme
sudo apt-add-repository -y ppa:tista/adapta
# Paper icon theme
sudo apt-add-repository -y ppa:snwh/pulp
# Atom editor
sudo add-apt-repository -y ppa:webupd8team/atom
# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Packages
apps=(
  git
  tmux
  nodejs
  npm
  vim
  ruby
  build-essential
  cmake
  python3-dev
  python3-pip
  atom
  google-chrome-stable
  firefox
  unity-tweak-tool
  adapta-gtk-theme
  paper-icon-theme
)

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y "${apps[@]}"
