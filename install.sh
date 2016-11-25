#!/usr/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
--git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages

. "$DOTFILES_DIR/install/apt.sh"
. "$DOTFILES_DIR/install/npm.sh"

# Dotfiles to symlink

dotfiles=(
  ".bashrc"
  ".bash_aliases"
  ".tmux.conf"
  ".gitconfig"
)

# Make the symlinks

for dotfile in ${dotfiles[@]}; do
  ln -sfv "$DOTFILES_DIR/dotfiles/$dotfile" ~
done

# More symlinks

sudo ln -sf "$(which nodejs)" /usr/bin/node
