#!/usr/bin/env bash

# Source all the packages lists
. "$DOTFILES_DIR/packages/apt.sh"
. "$DOTFILES_DIR/packages/npm.sh"
. "$DOTFILES_DIR/packages/gem.sh"
. "$DOTFILES_DIR/packages/apm.sh"
. "$DOTFILES_DIR/packages/pip.sh"

sudo apt install -y "${apt_packages[@]}"
pip3 install --user --upgrade "${packages[@]}"
sudo npm install -g "${packages[@]}"
apm install "${apm_packages[@]}"
sudo gem install "${gem_packages[@]}""
