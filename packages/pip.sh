#!/usr/bin/bash

# Packages
packages=(
  neovim
  pep8
)

# Update pip itself
pip3 install --upgrade pip

# Install packages
pip3 install --user --upgrade "${packages[@]}"
