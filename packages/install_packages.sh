#!/usr/bin/env bash

# Source all the packages lists
. "${REPO_DIR}/packages/pacman.sh"
. "${REPO_DIR}/packages/apm.sh"

# Update packages
sudo pacman -Syu --noconfirm
sudo npm update -g

# Install all the packages
sudo pacman -Sy --noconfirm "${pacman_packages[@]}"
apm install "${apm_packages[@]}"
