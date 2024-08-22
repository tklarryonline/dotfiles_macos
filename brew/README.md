# Homebrew bundling and Brewfile

I use Brewfile to manage my Homebrew packages. The battery-included `brew bundle` command was inadequate to manage
Brew-installed packages, so I opted to use [homebrew-file].

## Installations

Run the following script to install brew and the gang.

```sh
$ setup_brew.sh
```

## Included apps

I prefer using Brew to install applications, and the list below includes my conscious choices of apps and casks.

### Casks

- [Discord][discord] for community chats.
- [EVkey][evkey] for typing Vietnamese dialects.
- [Fork][fork] for a nice Git UI.
- [iTerm2][iterm2] for terminal uses.
- [LogiOptions+][logioptions] because of my Logitech MX Master 3 mouse.
- [Notion][notion] for shared notes in my family.
- [Notion Calendar][notion-calendar] for managing my calendar.
- [Obsidian][obsidian] for personal notes and publications.
- [Rectangle][rectangle] for windows management.
- [Visual Studio Code][vscode] as my daily code editor.


### Terminal apps

- brew-file for efficient and reproducible brew package management.
- Neovim because I love Vim and am using [vscode-neovim] extension.
- Starship for a minimal and blazing-fast prompt.

[discord]: https://discord.com/
[evkey]: https://evkeyvn.com/
[fork]: https://fork.dev/
[homebrew-file]: https://github.com/rcmdnk/homebrew-file
[iterm2]: https://iterm2.com/
[logioptions]: https://www.logitech.com/en-us/software/options.html
[notion]: https://www.notion.so/
[notion-calendar]: https://www.notion.so/product/calendar
[obsidian]: https://obsidian.md/
[rectangle]: https://rectangleapp.com/
[vscode]: https://code.visualstudio.com/
[vscode-neovim]: https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
