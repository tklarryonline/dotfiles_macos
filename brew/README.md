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
- [Firefox][firefox] for safe browsing.
- [Fork][fork] for a nice Git UI.
- [iTerm2][iterm2] for terminal uses.
- [LogiOptions+][logioptions] because of my Logitech MX Master 3 mouse.
- [Notion][notion] for shared notes in my family.
- [Notion Calendar][notion-calendar] for managing my calendar.
- [Obsidian][obsidian] for personal notes and publications.
- [Rectangle][rectangle] for windows management. An open-source alternative to Magnets.
- [Visual Studio Code][vscode] as my daily code editor.
- [Zoom][zoom] for video calls and meetings.


### Terminal apps

- [eza] as a Rust replacement for ls.
- [homebrew-file] for efficient and reproducible brew package management.
- [neovim] because I love Vim and am using [vscode-neovim] extension.
- [starship] for a minimal and blazing-fast prompt.

[discord]: https://discord.com/
[evkey]: https://evkeyvn.com/
[eza]: https://github.com/eza-community/eza
[firefox]: https://www.mozilla.org/en-US/firefox/
[fork]: https://fork.dev/
[homebrew-file]: https://github.com/rcmdnk/homebrew-file
[iterm2]: https://iterm2.com/
[logioptions]: https://www.logitech.com/en-us/software/options.html
[neovim]: https://neovim.io/
[notion-calendar]: https://www.notion.so/product/calendar
[notion]: https://www.notion.so/
[obsidian]: https://obsidian.md/
[rectangle]: https://rectangleapp.com/
[starship]: https://starship.rs/
[vscode]: https://code.visualstudio.com/
[vscode-neovim]: https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
[zoom]: https://www.zoom.us/
