#!/usr/bin/env bash

# Remove previously added repositories (to remain idempontent)
sudo rm -f /etc/apt/sources.list.d/*

## Repositories
# Adapta GTK theme
sudo apt-add-repository -y ppa:tista/adapta
# Paper icon theme
sudo apt-add-repository -y ppa:snwh/pulp
# Neovim editor
# sudo add-apt-repository -y ppa:neovim-ppa/unstable
# Atom editor
sudo add-apt-repository -y ppa:webupd8team/atom
# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# Heroku CLI
sudo add-apt-repository -y "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
# Node.js
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
# i3 Window Manager
sudo sh -c 'echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list'
sudo apt-get --allow-unauthenticated install sur5r-keyring

# Packages
export apt_packages=(
  git
  tmux
  nodejs
  vim
  ruby
  build-essential
  cmake
  python3-dev
  python3-pip
  atom
  i3
  google-chrome-stable
  heroku
  unity-tweak-tool
  adapta-gtk-theme
  paper-icon-theme
)

# Update & upgrade
sudo apt update
sudo apt upgrade -y
