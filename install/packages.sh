#!/bin/bash

export PATH=$PATH:$HOME/.local/share/omarchy/bin/
export OMARCHY_PATH=$HOME/.local/share/omarchy

script_dir="$(dirname "$(readlink -f "${BASH_SOURCE[0]:-$0}")")"

omarchy-update

sudo pacman -S --needed --noconfirm - < "$script_dir"/packages.pacman
yay -S --answerclean None --answerdiff None --needed --noconfirm - < "$script_dir"/packages.yay
