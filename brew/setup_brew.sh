#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set HOMEBREW_BREWFILE
export HOMEBREW_BREWFILE=~/.dotfiles/brew/Brewfile

# Install brew-file
brew install rcmdnk/file/brew-file

# Source brew-wrap
source "$(brew --prefix)/etc/brew-wrap"
