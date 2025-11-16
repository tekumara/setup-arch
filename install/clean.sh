#!/bin/bash

set -euo pipefail

# remove unneeded packages installed by Omarchy

sudo pacman -Rns --noconfirm libreoffice-fresh spotify typora signal-desktop

