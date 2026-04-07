# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a macOS dotfiles repository for managing system configuration and development environment setup. The repository uses a modular structure where each tool/application has its own directory with setup scripts and configuration files.

**Installation Location**: All dotfiles should be cloned to `$HOME/.dotfiles`

## Architecture

### Modular Setup System

Each major tool/component has its own directory containing:
- `setup_*.sh` - Installation/symlink creation script
- Configuration files specific to that tool
- `README.md` - Tool-specific documentation

### Setup Order

The setup process follows a specific dependency chain:

1. **Homebrew** (`brew/`) - Package manager foundation
2. **Git** (`git/`) - Version control configuration
3. **Zsh** (`zsh/`) - Shell environment
4. **asdf** (`asdf/`) - Runtime version manager
5. **Vim** (`vim/`) - Editor configurations (optional)
6. **DNSCrypt Proxy** (`dnscrypt_proxy/`) - DNS configuration (optional)

### Configuration Structure

**Zsh Configuration** (`zsh/`):
- `minimal.zshrc` - Main zsh configuration entry point
- `common.sh` - Common shell settings
- `plugins.sh` - zgenom plugin manager setup
- `aliases.sh` - Custom shell aliases
- `tools.sh` - Tool-specific PATH and environment variables
- `plugins/zgenom/` - Plugin manager installation
- `starship/` - Starship prompt configuration

**Homebrew** (`brew/`):
- `Brewfile` - Declarative package/app manifest managed by `homebrew-file`
- Uses `rcmdnk/file/brew-file` for reproducible package management

**asdf** (`asdf/`):
- Manages NodeJS, Ruby, and Yarn versions
- `.asdfrc` - asdf configuration

**Git** (`git/`):
- `gitconfig` - Git configuration (symlinked to `~/.gitconfig`)

**Vim/Neovim** (`vim/`):
- `ideavimrc` - IntelliJ Vim emulation config
- `nvim/` - Neovim configuration using Vim script format

**DNSCrypt Proxy** (`dnscrypt_proxy/`):
- `cloaking-rules.txt` - Domain resolution rules (e.g., `*.test` → `127.0.0.1`)
- `local-proxy.toml` - Local proxy configuration

## Common Commands

### Initial Setup (Fresh macOS Installation)

```bash
# 1. Install Command Line Tools
xcode-select --install

# 2. Clone this repository
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles

# 3. Install Homebrew and packages
sh brew/setup_brew.sh

# 4. Configure Git
sh git/setup_git.sh

# 5. Setup Shell
sh zsh/setup_zsh.sh

# 6. Setup asdf
sh asdf/setup_asdf.sh

# 7. Setup Vim (optional)
sh vim/setup_vim.sh

# 8. Setup DNS proxy (optional)
sh dnscrypt_proxy/setup_proxy.sh
```

### Homebrew Management

```bash
# Install packages from Brewfile
brew file install

# Update Brewfile with current packages
brew file update

# Check what would be installed/removed
brew file diff
```

### asdf Version Management

```bash
# Install a specific version
asdf install nodejs 20.0.0
asdf install ruby 3.2.0

# Set global version
asdf global nodejs 20.0.0

# Refresh shims after installing packages
rehash
```

### Symlink Management

All setup scripts create symlinks from `~/.dotfiles/<component>` to appropriate home directory locations:
- `.zshrc` → `zsh/minimal.zshrc`
- `.zgenom` → `zsh/plugins/zgenom`
- `.asdfrc` → `asdf/.asdfrc`
- `.gitconfig` → `git/gitconfig`
- `.ideavimrc` → `vim/ideavimrc`
- `.config/nvim` → `vim/nvim`

## Key Technical Details

### PATH Configuration

The shell PATH is configured in `zsh/tools.sh` with the following precedence (first = highest):
1. asdf shims (`$ASDF_DATA_DIR/shims`)
2. GNU Make from Homebrew
3. libpq (PostgreSQL client)
4. PostgreSQL@15 binaries

### Environment Variables

Important environment variables set by the configuration:
- `DOTFILES_DIR="$HOME/.dotfiles"` - Repository location
- `DOT_ZSH_CONFIG="$DOTFILES_DIR/zsh"` - Zsh config path
- `ASDF_DATA_DIR="$HOME/.asdf"` - asdf installation directory
- `HOMEBREW_BREWFILE=~/.dotfiles/brew/Brewfile` - Brewfile location
- `GPG_TTY="$(tty)"` - GPG terminal configuration

### Shell Aliases

Common aliases defined in `zsh/aliases.sh`:
- File operations: `rm`, `cp`, `mv` with `-i` (interactive)
- Directory navigation: `..`, `...`, `....`
- `ls` → `eza` (Rust replacement)
- Git shortcuts: `gs`, `ga`, `gc`, `gco`, etc.

### Tools and Utilities

**Installed via Homebrew**:
- `eza` - Modern replacement for `ls`
- `starship` - Cross-shell prompt
- `neovim` - Modern Vim
- `jq` - JSON processor
- `awscli` - AWS CLI
- `direnv` - Environment management
- `eva` - Calculator REPL

**Zsh Plugins** (managed by zgenom):
- Configured in `zsh/plugins.sh`

## Modifications

### Adding New Packages

```bash
# Add to Brewfile manually, then:
brew file install

# Or install directly (will be added to Brewfile automatically)
brew install <package>
```

### Modifying Configurations

All configuration files should be edited in the `~/.dotfiles` repository directory, not in the home directory symlink locations. Changes take effect after restarting the shell or sourcing the configuration.
