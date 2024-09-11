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
- [Docker Desktop][docker-desktop] for Docker GUI and container management.
- [EVkey][evkey] for typing Vietnamese dialects.
- [Firefox][firefox] for safe browsing.
- [Fork][fork] for a nice Git UI.
- [iTerm2][iterm2] for terminal uses.
- [JetBrains Toolbox][jetbrains-toolbox] for JetBrains IDE.
- [LogiOptions+][logioptions] because of my Logitech MX Master 3 mouse.
- [Notion][notion] for shared notes in my family.
- [Notion Calendar][notion-calendar] for managing my calendar.
- [Obsidian][obsidian] for personal notes and publications.
- [Rectangle][rectangle] for windows management. An open-source alternative to Magnets.
- [Visual Studio Code][vscode] as my daily code editor.
- [Zoom][zoom] for video calls and meetings.


### Terminal apps

- [awscli] to manage and interact with AWS via the Command Line Interface.
- [eva] as a simple calculator REPL, similar to bc(1), with syntax highlighting and persistent history.
- [eza] as a Rust replacement for ls.
- [homebrew-file] for efficient and reproducible brew package management.
- [jq] for JSON parsing and querying.
- [neovim] because I love Vim and am using [vscode-neovim] extension.
- [rush] for running parallel commands.
- [starship] for a minimal and blazing-fast prompt.

### Terminal tools

Some terminal tools listed in Brewfile are installed as required by the terminal apps above. The following are ones
I need to set up my development environment specifically.

- [llvm@15] to install `grpc` gem. `llvm@15` requires lz4, xz and zstd.
- [gpg][gnupg] (GNU Pretty Good Privacy (PGP) package) to help with installing `yarn` from asdf.

[awscli]: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html
[discord]: https://discord.com/
[docker-desktop]: https://www.docker.com/products/docker-desktop/
[evkey]: https://evkeyvn.com/
[eva]: https://github.com/oppiliappan/eva
[eza]: https://github.com/eza-community/eza
[firefox]: https://www.mozilla.org/en-US/firefox/
[fork]: https://fork.dev/
[gnupg]: https://gnupg.org/
[homebrew-file]: https://github.com/rcmdnk/homebrew-file
[iterm2]: https://iterm2.com/
[jetbrains-toolbox]: https://www.jetbrains.com/toolbox-app/
[jq]: https://jqlang.github.io/jq/
[llvm@15]: https://github.com/llvm/llvm-project/releases/tag/llvmorg-15.0.7
[logioptions]: https://www.logitech.com/en-us/software/options.html
[neovim]: https://neovim.io/
[notion-calendar]: https://www.notion.so/product/calendar
[notion]: https://www.notion.so/
[obsidian]: https://obsidian.md/
[rectangle]: https://rectangleapp.com/
[rush]: https://github.com/shenwei356/rush
[starship]: https://starship.rs/
[vscode]: https://code.visualstudio.com/
[vscode-neovim]: https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
[zoom]: https://www.zoom.us/
