#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( builtin cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
--git-dir="$DOTFILES_DIR/.git" pull origin master

# Install all packages
. "$DOTFILES_DIR/packages/install.sh"

# Settings and fonts
. "$DOTFILES_DIR/settings/downloads.sh"
. "$DOTFILES_DIR/settings/settings.sh"
. "$DOTFILES_DIR/fonts/setup.sh"

# Create needed folders
mkdir -p ~/workspace
mkdir -p ~/projects
mkdir -p ~/Pictures/wallpaper

# Dotfiles to symlink
dotfiles=(
  ".bashrc"
  ".bash_aliases"
  ".vimrc"
  ".tmux.conf"
  ".tern-config"
  ".gitconfig"
  ".gtkrc-2.0"
  ".editorconfig"
  ".eslintrc.js"
)

# Make the symlinks
for dotfile in ${dotfiles[@]}; do
  ln -sfv "$DOTFILES_DIR/dotfiles/$dotfile" ~
done

SCRIPTS_DIR=$DOTFILES_DIR/dotfiles/.scripts/
ln -sfv "$SCRIPTS_DIR" ~/

# Atom editor config files symlinks
ATOM_CONFIG_FILES=$DOTFILES_DIR/dotfiles/.atom/*
mkdir -p ~/.atom
for file in $ATOM_CONFIG_FILES; do
  ln -sfv "$file" ~/.atom
done

# Neovim init.vim symlink
ln -sfv "$DOTFILES_DIR/dotfiles/init.vim" ~/.config/nvim

# Tmuxinator layouts
MUX_LAYOUTS_DIR=$DOTFILES_DIR/dotfiles/.tmuxinator/
ln -sfv "$MUX_LAYOUTS_DIR" ~/

# Powerline config files
POWERLINE_CONFIG_DIR=$DOTFILES_DIR/dotfiles/.config/powerline/
rm -rf ~/.config/powerline
ln -sfv "$POWERLINE_CONFIG_DIR" ~/.config

# i3 config files
I3_CONFIG_DIR=$DOTFILES_DIR/dotfiles/.config/i3/
rm -rf ~/.config/i3
ln -sfv "$I3_CONFIG_DIR" ~/.config

# GTK3 config file
ln -sfv "$DOTFILES_DIR/dotfiles/.config/gtk-3.0/settings.ini" \
  ~/.config/gtk-3.0

# Symlink autostart scripts
AUTOSTART_SCRIPTS=$DOTFILES_DIR/autostart/
# In case the directory already exists
rm -rf ~/.config/autostart
ln -sfv "$AUTOSTART_SCRIPTS" ~/.config
