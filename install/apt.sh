#!/usr/bin/bash

# Install packages

apps=(
  git
  tmux
  nodejs
  npm
  vim
  google-chrome-stable
)

sudo apt install "${apps[@]}"
