#!/bin/bash

# Set the paths
dotfiles_dir="$HOME/.dotfiles"
zsh_dir="$dotfiles_dir/zsh"

# Create a symbolic link
if [ ! -L "$HOME/.zshrc" ]; then
  echo "Creating a symbolic link for .zshrc"
  ln -s "$zsh_dir/minimal.zshrc" "$HOME/.zshrc"
fi

# Install zgenom, a lightweight and simple plugin manager for Zsh
# https://github.com/jandamm/zgenom
if [ ! -L "$HOME/.zgenom" ]; then
  echo "Creating a symbolic link for .zgenom"
  ln -s "$zsh_dir/plugins/zgenom" "$HOME/.zgenom"
fi

# Restart your shell for the changes to take effect
eval $SHELL
