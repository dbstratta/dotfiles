#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export REPO_DIR="$( builtin cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "${REPO_DIR}/.git" ] && git --work-tree="${REPO_DIR}" \
--git-dir="${REPO_DIR}/.git" pull origin master

# Install all packages
. "${REPO_DIR}/packages/install_packages.sh"

# Settings and fonts
. "${REPO_DIR}/misc/downloads.sh"
. "${REPO_DIR}/misc/settings.sh"

# Create some folders
mkdir -p ~/workspace
mkdir -p ~/projects
mkdir -p ~/wallpapers
mkdir -p ~/.config

# Dotfiles symlinks
for dotfile in "${REPO_DIR}/dotfiles/.*"; do
  [ -f "${dotfile}" ] && ln -sfv "${dotfile}" ~/
done

# Fonts symlink
rm -rf ~/.local/share/fonts
ln -sfvn "${REPO_DIR}/fonts" ~/.local/share/fonts

# Scripts symlink
rm -rf ~/.scripts
ln -sfvn "${REPO_DIR}/scripts" ~/.scripts

# Config files symlinks
ln -sfv "${REPO_DIR}/dotfiles/.config/*" ~/.config/

# Atom editor config files symlinks
mkdir -p ~/.atom
ln -sfv "${REPO_DIR}/dotfiles/.atom/*" ~/.atom/
