#!/usr/bin/bash

# Globally install with npm

packages=(
  webpack@beta
  webpack-dev-server@beta
  gulp-cli
  bower
)

sudo npm install -g "${packages[@]}"
