#!/usr/bin/bash

# Globally install with npm

packages=(
  webpack@beta
  webpack-dev-server@beta
  karma-cli
  eslint
  gulp-cli
)

sudo npm install -g "${packages[@]}"
