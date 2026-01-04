#!/bin/bash

set -euo pipefail

export PATH=$PATH:$HOME/.local/share/omarchy/bin/
export OMARCHY_PATH=$HOME/.local/share/omarchy

omarchy-update

packages=(
  chromium-widevine
  helium-browser-bin
  quickemu-git
  rsync
  stow
  uv
  zen-browser-bin
  zmx-git
)

yay -S --answerclean None --answerdiff None --needed --noconfirm "${packages[@]}"
