# .files for MacOS

_And a tiny guide to setup a fresh MacBook Pro_

I recently wiped clean my Intel MacBook Pro 2018 to have a fresh start. Even though I have had a few tries at managing
my dotfiles with Git[^dotfiles-old] [^dotfiles-wsl] [^dotfiles-company-computer], I decided to start a new one learning
from my previous mistakes. With that being said, the [dotfiles-company-computer] should be used to setup a new MacBook
provided to me by my employers.

## Key points

- I try to manage all of my apps using [Homebrew][brew.sh].
- There are a few exceptions, mainly because I want the following apps handle their own updates:
    - [1Password][1password]
    - [Arc browser][arc-browser]
    
## Setting Up

1. Install [1Password][1password] and browser of choice. I used [Arc][arc-browser] at the time of writing.
2. Install macOS Command Line Tools to get `git`, compiles, etc.
    ```sh
    $ xcode-select --install
    ```
3. Set up Homebrew [here](./brew/).
4. Set up Git [here](./git/).
5. Set up Shell [here](./zsh/).

## Resources

- [awesome-alternatives-in-rust]

[^dotfiles-old]: https://github.com/tklarryonline/dotfiles_old
[^dotfiles-wsl]: https://github.com/tklarryonline/dotfiles-wsl
[^dotfiles-company-computer]: https://github.com/tklarryonline/dotfiles-company-computer

[1password]: https://1password.com/downloads/
[awesome-alternatives-in-rust]: https://github.com/TaKO8Ki/awesome-alternatives-in-rust
[arc-browser]: https://arc.net/
[brew.sh]: https://brew.sh/
[dotfiles-company-computer]: https://github.com/tklarryonline/dotfiles-company-computer
