#!/usr/bin/bash

# Globally install with npm

packages=(
  gulp-cli
  bower
)

npm install -g "${packages[@]}"
