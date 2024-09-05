#!/bin/bash

# ***************************************************************
# General asdf setup
# ***************************************************************

# Set the paths
asdf_dir="$HOME/.dotfiles/asdf"

# Create a symbolic link
if [ ! -L "$HOME/.asdfrc" ]; then
  ln -s "$asdf_dir/.asdfrc" "$HOME/.asdfrc"
fi

# Restart your shell for the changes to take effect
eval $SHELL

# ***************************************************************
# Set up NodeJS and Yarn
# ***************************************************************

asdf plugin add nodejs
asdf plugin add yarn

# ***************************************************************
# Set up Ruby
# ***************************************************************

asdf plugin add ruby

# ***************************************************************
# Tidy up and Rehash
# ***************************************************************
rehash
