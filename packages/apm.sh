#!usr/bin/bash

packages=(
  file-icons
  minimap
  linter
  language-vue
  language-pug
  editorconfig
)

# Install packages
apm install "${packages[@]}"
