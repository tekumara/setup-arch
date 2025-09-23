#!/bin/bash

export PATH=$PATH:$HOME/.local/share/omarchy/bin/
export OMARCHY_PATH=$HOME/.local/share/omarchy

omarchy-update

yay -S --answerclean None --answerdiff None --needed --noconfirm - < ~/code/setup-arch/install/packages.yay
