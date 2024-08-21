# Homebrew bundling and Brewfile

I use Brewfile to manage my Homebrew packages. The battery-included `brew bundle` command was inadequate to manage
Brew-installed packages, so I opted to use [homebrew-file].

## Installations

Run the following script to install brew and the gang.

```sh
$ setup_brew.sh
```

## Included apps

### Casks

- Discord for community chats.
- EVkey for typing Vietnamese dialects.
- Fork for a nice Git UI.
- iTerm2 for terminal uses.
- LogiOptions+ because of my Logitech MX Master 3 mouse.
- Obsidian for notes.
- Visual Studio Code as my daily code editor.

### Terminal apps

- brew-file for efficient and reproducible brew package management.
- Neovim because I love Vim and am using [vscode-neovim] extension.
- Starship for a minimal and blazing-fast prompt.

[homebrew-file]: https://github.com/rcmdnk/homebrew-file
[vscode-neovim]: https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
