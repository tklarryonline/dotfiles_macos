# ***************************************************************
# A collection of plugins for zsh
# 
# I use zgenom as my plugin manager for zsh.
# The plugins are stored in the zsh/plugins directory.
# ***************************************************************

# Load zgenom and turn on automatic updates
# https://github.com/jandamm/zgenom?tab=readme-ov-file#example-zshrc
source "${HOME}/.zgenom/zgenom.zsh"

# Check for plugin and zgenom updates every 7 days
# This does not increase the startup time.
zgenom autoupdate

# Load the plugins

# Syntax highlighting
# NOTE: this plugin is recommended to be loaded LAST
# https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
zgenom load zsh-users/zsh-syntax-highlighting
