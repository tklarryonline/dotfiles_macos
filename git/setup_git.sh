#!/bin/bash

# Set the paths
dotfiles_dir="$HOME/.dotfiles"
gitconfig_path="$dotfiles_dir/git/gitconfig"
symlink_path="$HOME/.gitconfig"

# Create the symlink
ln -s "$gitconfig_path" "$symlink_path"

echo "Symlink created: $symlink_path ~> $gitconfig_path"
