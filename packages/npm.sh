#!/usr/bin/bash

# Globally install with npm

packages=(
  webpack@beta
  webpack-dev-server@beta
  karma-cli
  eslint
)

sudo npm install -g "${packages[@]}"

# Update all global packages, especially npm itself
sudo npm update -g
