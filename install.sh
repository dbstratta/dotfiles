#!/usr/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
--git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages

. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/npm.sh"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/dotfiles/.bashrc" ~
ln -sfv "$DOTFILES_DIR/dotfiles/.tmux.conf" ~

# More symlinks

sudo ln -s "$(which nodejs)" /usr/bin/node
