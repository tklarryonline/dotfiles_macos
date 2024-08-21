#!/bin/bash

# Set the paths
dotfiles_dir="$HOME/.dotfiles"

# Create a symbolic link
ln -s "$dotfiles_dir/zsh/minimal.zshrc" "$HOME/.zshrc"

# Restart your shell for the changes to take effect
eval $SHELL
