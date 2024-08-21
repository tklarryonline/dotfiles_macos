# A minimal .zshrc that uses Starship.rs prompt

# Path to the Dotfiles
export DOTFILES_DIR="$HOME/.dotfiles"
export DOT_ZSH_CONFIG="$DOTFILES_DIR/zsh"

# Setup Starship
source "$DOT_ZSH_CONFIG/starship/init.sh"

# Common setups
source "$DOT_ZSH_CONFIG/common.sh"

# Plugins
source "$DOT_ZSH_CONFIG/plugins.sh"
