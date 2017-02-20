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
. "$REPO_DIR/misc/downloads.sh"
. "$REPO_DIR/misc/settings.sh"

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

# Fonts symlink
FONTS_DIR=$REPO_DIR/dotfiles/.fonts
rm -rf ~/.fonts
ln -sfv "$FONTS_DIR" ~/

# Scripts symlink
SCRIPTS_DIR=$REPO_DIR/dotfiles/.scripts/
rm -rf ~/.scripts
ln -sfv "$SCRIPTS_DIR" ~/

CONFIG_FOLDERS_DIR=$REPO_DIR/dotfiles/.config/*
for file in $CONFIG_FOLDERS_DIR; do
  ln -sfv "$file" ~/.config
done

# Atom editor config files symlinks
ATOM_CONFIG_FILES=$REPO_DIR/dotfiles/.atom/*
mkdir -p ~/.atom
for file in $ATOM_CONFIG_FILES; do
  ln -sfv "$file" ~/.atom
done
