#!usr/bin/bash

packages=(
  vim-mode-plus
  vim-mode-plus-ex-mode
  file-icons
  linter
  linter-eslint
  linter-jsonlint
  language-vue
  language-pug
  autoclose-html
  autocomplete-paths
  pigments
  atom-clock
  editorconfig
  atom-material-ui
)

# Install packages
apm install "${packages[@]}"
