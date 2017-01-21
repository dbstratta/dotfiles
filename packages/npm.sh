#!/usr/bin/env bash

# Globally install with npm
export npm_packages=(
  webpack
  webpack-dev-server
  karma-cli
  eslint
)

# Update all global packages, especially npm itself
sudo npm update -g
