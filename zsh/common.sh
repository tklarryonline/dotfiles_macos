# ***************************************************************
# Common settings for my shell environment, including:
# - Homebrew-file
# - GNU Make
# ***************************************************************

# Homebrew-file
# https://homebrew-file.readthedocs.io/en/latest/installation.html
export HOMEBREW_BREWFILE="$DOTFILES_DIR/brew/Brewfile"

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# GNU make setup
# Switch to use GNU Make installation from Brew
# https://formulae.brew.sh/formula/make
export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"
