#!usr/bin/bash

packages=(
  vim-mode-plus
  file-icons
  linter
  minimap
  language-vue
  language-pug
  editorconfig
)

# Install packages
apm install "${packages[@]}"
