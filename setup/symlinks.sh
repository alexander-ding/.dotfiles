#!/usr/bin/env bash

function link {
  src="$(pwd)/$1"
  dest="$HOME/$1"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h "$dest" ]; then
    # delete existing symlink
    rm $dest

  elif [ -f "$dest" ]; then
    # back up existing files
    mv $dest{,.$dateStr}

  elif [ -d "$dest" ]; then
    # back up existing dirs
    mv $dest{,.$dateStr}
  fi

  echo "- $dest -> $src"
  ln -s "$src" "$dest"
}

printf "\nCreating symlinks\n"
link .vimrc
link .config/nvim
link .config/wezterm
link .gitconfig
link .gitignore_global
link .tmux.conf
link .zshrc
cp .zshrc.local.template .zshrc.local
link .zshrc.local
link .p10k.zsh

if [[ $OSTYPE == 'darwin'* ]]; then
  mkdir -p "$HOME/.config"
  link .config/karabiner
  link .config/skhd
  link .config/yabai
  link .config/sketchybar
fi
