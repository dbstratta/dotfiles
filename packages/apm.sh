#!usr/bin/bash

packages=(
  file-icons
  minimap
  language-vue
)

# Install packages
apm install "${packages[@]}"
