#!/usr/bin/env bash

# every instruction is idempotent so this script can be rerun multiple times

set -euo pipefail

stow -vv dotfiles -t ~

update-mime-database ~/.local/share/mime

