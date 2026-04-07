#!/bin/zsh
# ***************************************************************
# Terminal tooling settings for my shell environment, including:
# - asdf
# - GNU Make
# ***************************************************************

# asdf setup
# https://asdf-vm.com/guide/getting-started.html
export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

# GNU make setup
# Switch to use GNU Make installation from Brew
# https://formulae.brew.sh/formula/make
export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"

# Enables direnv
# https://direnv.net/
eval "$(direnv hook zsh)"

# Enables iTerm2 shell integration
# https://iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Set up the PATHs for PostgreSQL
# Enables libpq
export PATH="$(brew --prefix libpq)/bin:$PATH"
# Enables postgresql@12
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
# export PATH="$(brew --prefix postgresql@12)/bin:$PATH"

# Set up GPG key
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
export GPG_TTY="$(tty)"

# Global claude code setup
export PATH="/opt/homebrew/bin/claude:$PATH"

# Local API tokens / secrets (gitignored). See zsh/secrets.sh.example.
[[ -f "$DOT_ZSH_CONFIG/secrets.sh" ]] && source "$DOT_ZSH_CONFIG/secrets.sh"
