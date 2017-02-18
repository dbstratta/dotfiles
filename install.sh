#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export REPO_DIR
REPO_DIR="$( builtin cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$REPO_DIR/.git" ] && git --work-tree="$REPO_DIR" \
--git-dir="$REPO_DIR/.git" pull origin master

# Install all packages
. "$REPO_DIR/packages/install.sh"

# Settings and fonts
. "$REPO_DIR/settings/downloads.sh"
. "$REPO_DIR/settings/settings.sh"
#. "$REPO_DIR/fonts/setup.sh"

# Create needed folders
mkdir -p ~/workspace
mkdir -p ~/projects
mkdir -p ~/wallpapers

# Dotfiles symlinks
DOTFILES=$REPO_DIR/dotfiles/.*
for dotfile in $DOTFILES; do
  if [[ -f $dotfile ]]; then
    ln -sfv "$dotfile" ~
  fi
done

SCRIPTS_DIR=$REPO_DIR/dotfiles/.scripts/
ln -sfv "$SCRIPTS_DIR" ~/

# Atom editor config files symlinks
ATOM_CONFIG_FILES=$REPO_DIR/dotfiles/.atom/*
mkdir -p ~/.atom
for file in $ATOM_CONFIG_FILES; do
  ln -sfv "$file" ~/.atom
done

# i3 config files
I3_CONFIG_DIR=$REPO_DIR/dotfiles/.config/i3/
rm -rf ~/.config/i3
ln -sfv "$I3_CONFIG_DIR" ~/.config

# GTK3 config file
ln -sfv "$REPO_DIR/dotfiles/.config/gtk-3.0/settings.ini" ~/.config/gtk-3.0
