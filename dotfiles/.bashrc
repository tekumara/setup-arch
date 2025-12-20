# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

export PATH="$HOME/.local/bin:$PATH"

# default less to smart case insensitive searching + displaying ANSI colours
export LESS="-iR"

# Ensure Omarchy bins are in the path
export OMARCHY_PATH=$HOME/.local/share/omarchy
export PATH=$OMARCHY_PATH/bin/:$PATH

export EDITOR=nvim

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias ll='ls -al'
alias lg='lazygit'
alias nv='nvim'

