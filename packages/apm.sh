#!usr/bin/bash

packages=(
  vim-mode-plus
  file-icons
  linter
  git-plus
  language-vue
  language-pug
  autoclose-html
  pigments
  atom-clock
  editorconfig
)

# Install packages
apm install "${packages[@]}"
