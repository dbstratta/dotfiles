#!/usr/bin/env bash

# Packages
export pip_packages=(
  powerline-status
  requests
  neovim
  flake8
)

# Update pip itself
pip3 install --upgrade pip
