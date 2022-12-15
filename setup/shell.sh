#!/usr/bin/env bash

printf "\nConfiguring shell\n"

# install ZSH (Linux only)
if [[ $OSTYPE != 'darwin'* ]]; then
  echo "- zsh"
  sudo apt-get -qq install zsh &>/dev/null
  sudo chsh -s $(which zsh) "$USER" >/dev/null
fi

echo "- oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &>/dev/null

echo "- zsh-asdf"
git clone -q https://github.com/asdf-vm/asdf.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/asdf &>/dev/null

echo "- zsh-autosuggestions"
git clone -q https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &>/dev/null

echo "- zsh-syntax-highlighting"
git clone -q https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &>/dev/null

echo "- p10k"
git clone -q --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k &>/dev/null

echo "- p10k custom fonts"
[[ $OSTYPE == 'darwin'* ]] &&
  font_path=$HOME/Library/Fonts ||
  font_path=$HOME/.local/share/fonts

mkdir -p "$font_path"
cd $font_path && {
  curl -sSOL 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
  curl -sSOL 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
  curl -sSOL 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.tttalic.ttf'
  cd -
} >/dev/null

echo "- firacode"
if [[ $OSTYPE == 'darwin'* ]]; then
  curl -sSLO https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
  unzip -o -q -d $font_path Fira_Code_v6.2.zip
  rm Fira_Code_v6.2.zip
else
  sudo apt-get -qq install fonts-firacode >/dev/null

  # reload font cache
  fc-cache -f
fi
