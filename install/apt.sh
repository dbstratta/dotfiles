#!/usr/bin/bash

# Repositories
sudo apt-add-repository -y ppa:tista/adapta

# Packages
apps=(
  git
  tmux
  nodejs
  npm
  vim
  unity-tweak-tool
  adapta-gtk-theme
)

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y "${apps[@]}"
