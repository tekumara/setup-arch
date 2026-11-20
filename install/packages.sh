#!/bin/bash

set -euo pipefail

export OMARCHY_PATH=/usr/share/omarchy

# Configure the Rex repository before syncing package databases.
key_file=$(mktemp)
trap 'rm -f "$key_file"' EXIT

curl -fsSL -o "$key_file" https://pkgs.superlogical.com/rex/keys/rex.asc
sudo pacman-key --add "$key_file"
sudo pacman-key --lsign-key E28636AC71905C6DDE40C1EDFAA6B80F641307A7

printf '[rex]\nSigLevel = Required DatabaseRequired\nServer = https://pkgs.superlogical.com/rex/arch/snapshot/$arch\n' | sudo install -m 0644 /dev/stdin /etc/pacman.d/rex.conf

if ! grep -qxF 'Include = /etc/pacman.d/rex.conf' /etc/pacman.conf; then
  printf '%s\n' 'Include = /etc/pacman.d/rex.conf' | sudo tee -a /etc/pacman.conf >/dev/null
fi

omarchy-update

packages=(
  lsof
  rex/rex
  rsync
  stow
  uv
)

packages_git=(
  quickemu-git
)

yay -Syu --answerclean None --answerdiff None --needed --noconfirm "${packages[@]}"

# install even if uptodate in order to fetch latest commits
yay -S --answerclean None --answerdiff None --noconfirm "${packages_git[@]}"

mise use --global zmx@latest
