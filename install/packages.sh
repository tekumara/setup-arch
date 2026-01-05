#!/bin/bash

set -euo pipefail

export PATH=$PATH:$HOME/.local/share/omarchy/bin/
export OMARCHY_PATH=$HOME/.local/share/omarchy

omarchy-update

packages=(
  chromium-widevine
  helium-browser-bin
  lsof
  rsync
  stow
  uv
  zen-browser-bin
)

packages_git=(
  quickemu-git
  zmx-git
)

yay -S --answerclean None --answerdiff None --needed --noconfirm "${packages[@]}"

# install even if uptodate in order to fetch latest commits
yay -S --answerclean None --answerdiff None --noconfirm "${packages_git[@]}"
