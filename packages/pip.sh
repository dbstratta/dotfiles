#!/usr/bin/bash

# Packages
packages=(
  neovim
)

# Update pip itself
pip3 install --upgrade pip

# Install packages
pip3 install --user --upgrade "${packages[@]}"
