#!/usr/bin/bash

# Install packages

apps=(
  git
  tmux
  nodejs
  npm
  vim
  unity-tweak-tool
)

sudo apt install -y "${apps[@]}"
