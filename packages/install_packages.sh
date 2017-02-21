#!/usr/bin/env bash

# Source all the packages lists
. "$REPO_DIR/packages/pacman.sh"
. "$REPO_DIR/packages/pip.sh"
. "$REPO_DIR/packages/apm.sh"

# Update packages
sudo pacman -Syu
pip install --upgrade pip
sudo npm update -g

# Install all the packages
sudo pacman -Sy --noconfirm "${pacman_packages[@]}"
pip install --user --upgrade "${pip_packages[@]}"
apm install "${apm_packages[@]}"
