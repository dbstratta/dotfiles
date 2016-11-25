#!/usr/bin/bash

# Globally install with npm

packages=(
  gulp-cli
  bower
)

sudo npm install -g "${packages[@]}"
