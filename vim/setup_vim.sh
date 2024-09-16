#!/bin/bash

# Set the paths
dotfiles_dir="$HOME/.dotfiles"
vim_dir="$dotfiles_dir/vim"

# Create a symbolic link for $HOME/.ideavimrc if it doesn't exist
if [ ! -L "$HOME/.ideavimrc" ]; then
  echo "Creating a symbolic link for .ideavimrc"
  ln -s "$vim_dir/ideavimrc" "$HOME/.ideavimrc"
fi

# Create a symbolic link for $HOME/.config/nvim if it doesn't exist
if [ ! -L "$HOME/.config/nvim" ]; then
  echo "Creating a symbolic link for .config/nvim"
  ln -s "$vim_dir/nvim" "$HOME/.config/nvim"
fi
