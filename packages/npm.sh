#!/usr/bin/bash

# Globally install with npm

packages=(
  webpack@beta
  gulp-cli
  bower
)

sudo npm install -g "${packages[@]}"
