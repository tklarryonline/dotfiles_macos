# ***************************************************************
# Terminal tooling settings for my shell environment, including:
# - asdf
# - GNU Make
# ***************************************************************

# asdf set up
# https://asdf-vm.com/guide/getting-started.html
source $(brew --prefix)/opt/asdf/libexec/asdf.sh

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

# Enables libpq
export PATH="$(brew --prefix libpq)/bin:$PATH"
