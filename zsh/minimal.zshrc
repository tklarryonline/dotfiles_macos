# ***************************************************************
# A minimal .zshrc file that uses Starship.rs prompt
# ***************************************************************

# Path to the Dotfiles
export DOTFILES_DIR="$HOME/.dotfiles"
export DOT_ZSH_CONFIG="$DOTFILES_DIR/zsh"

# Setup Starship
source "$DOT_ZSH_CONFIG/starship/init.sh"

# Common setups
source "$DOT_ZSH_CONFIG/common.sh"

# Plugins
source "$DOT_ZSH_CONFIG/plugins.sh"

# Terminal tool
source "$DOT_ZSH_CONFIG/tools.sh"

# Aliases
source "$DOT_ZSH_CONFIG/aliases.sh"
