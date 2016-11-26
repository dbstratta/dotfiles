#!/usr/bin/bash

# Gems
gems=(
  tmuxinator
)

# Install gems
for gem in ${gems[@]}; do
  sudo gem install $gem
done
