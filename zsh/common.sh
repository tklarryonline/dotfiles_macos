# ***************************************************************
# Common settings for my shell environment, including:
# - Homebrew-file
# ***************************************************************

# Homebrew-file
# https://homebrew-file.readthedocs.io/en/latest/installation.html
export HOMEBREW_BREWFILE="$DOTFILES_DIR/brew/Brewfile"

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# Under macOS Monterey and later, you need to set a magic environment variable
# to prevent the following error:
# `[__NSCFConstantString initialize] may have been in progress in another thread`.
# I experienced `socket hang on` error caused by this issue.
# https://stackoverflow.com/questions/50168647/multiprocessing-causes-python-to-crash-and-gives-an-error-may-have-been-in-progr
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
