#!/usr/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( builtin cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
--git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages

. "$DOTFILES_DIR/packages/apt.sh"
. "$DOTFILES_DIR/packages/npm.sh"
. "$DOTFILES_DIR/packages/gems.sh"
. "$DOTFILES_DIR/packages/apm.sh"

# Settings and fonts

. "$DOTFILES_DIR/settings/downloads.sh"
. "$DOTFILES_DIR/settings/settings.sh"
. "$DOTFILES_DIR/fonts/setup.sh"

# Dotfiles to symlink

dotfiles=(
  ".bashrc"
  ".bash_aliases"
  ".vimrc"
  ".tmux.conf"
  ".tern-config"
  ".gitconfig"
)

# Make the symlinks

for dotfile in ${dotfiles[@]}; do
  ln -sfv "$DOTFILES_DIR/dotfiles/$dotfile" ~
done

# Atom editor config.cson symlink
ln -sfv "$DOTFILES_DIR/dotfiles/.atom/config.cson" ~/.atom

# .tmuxinator layouts
MUX_LAYOUTS=$DOTFILES_DIR/dotfiles/.tmuxinator/*

mkdir -p ~/.tmuxinator
for file in $MUX_LAYOUTS; do
  ln -sfv "$file" ~/.tmuxinator
done
