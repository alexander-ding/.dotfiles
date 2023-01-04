# .dotfiles

This is a central repository of configuration files and setup scripts to configure any fresh 64-bit macOS or Debian environments to replicate my personal dev environment.
Root access required.

Some goodies include:

1. [oh-my-zsh](https://ohmyz.sh/) + [powerlevel10k](https://github.com/romkatv/powerlevel10k) zsh shell
1. [tmux](https://github.com/tmux/tmux/wiki) with [dracula](https://draculatheme.com/tmux) theme
1. [vim](https://www.vim.org/) with [dracula](https://draculatheme.com/vim) theme and [vim-airline](https://github.com/vim-airline/vim-airline)
1. shell tooling, like [fzf](https://github.com/junegunn/fzf), [broot](https://dystroy.org/broot/), and [direnv](https://direnv.net/)
1. [vscode](https://code.visualstudio.com/) with [Firacode](https://github.com/tonsky/FiraCode) font
1. version-managed programming languages, including [Go](https://go.dev/) ([GVM](https://github.com/moovweb/gvm)), [Python](https://www.python.org/) ([miniforge](https://github.com/conda-forge/miniforge)), [Rust](https://www.rust-lang.org/) ([rustup](https://github.com/rust-lang/rustup)), [Node.js](https://nodejs.org/en/) ([asdf](https://asdf-vm.com/)), [Java](https://www.java.com/) ([sdkman](https://sdkman.io/)), and [Julia](https://julialang.org/) ([juliaup](https://github.com/JuliaLang/juliaup))
1. (macOS only) cute utility programs, like [hiddenbar](https://apps.apple.com/us/app/hidden-bar/), [hammerspoon](https://www.hammerspoon.org/), and [karabiner-elements](https://karabiner-elements.pqrs.org/) for custom shortcuts

## Prerequisites

1. A 64 bit macOS or Debian-based Linux OS
1. `sudo` access
1. `git`, to clone this repository
1. (macOS only) XCode CLI tools. To install, run

```bash
xcode-select --install
```

## Usage

Clone the repository to your home directory and run the setup script.

```bash
git clone https://github.com/alexander-ding/.dotfiles ~/.dotfiles
cd ~/.dotfiles && ./setup.sh
```
