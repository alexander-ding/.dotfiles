#!/usr/bin/env bash

printf "\nInstalling tools\n"

echo "- homebrew"
sudo true # preauthorize the next command
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &>/dev/null
export PATH=/opt/homebrew/bin:$PATH

echo "- wget"
brew install wget --quiet &>/dev/null

echo "- gpg"
brew install gpg --quiet &>/dev/null

echo "- zip"
brew install zip --quiet &>/dev/null

echo "- unzip"
brew install unzip --quiet &>/dev/null

echo "- vim"
brew install vim --quiet &>/dev/null
mkdir -p "$HOME/.vim/backups"
mkdir -p "$HOME/.vim/swaps"
mkdir -p "$HOME/.vim/undo"

echo "- tmux"
brew install tmux --quiet &>/dev/null
git clone -q https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
tmux start-server
tmux new-session -d
"$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh" >/dev/null
tmux kill-server
rm -rf ~/.tmux/resurrect

echo "- broot"
brew install broot --quiet &>/dev/null
broot --install >/dev/null

echo "- fzf"
brew install fzf --quiet &>/dev/null
"$(brew --prefix)/opt/fzf/install" --all &>/dev/null

echo "- asdf"
brew install asdf --quiet &>/dev/null

echo "- direnv"
brew install direnv --quiet &>/dev/null

echo "- kubectl"
brew install kubectl --quiet &>/dev/null

echo "- kubie"
brew install kubie --quiet &>/dev/null

echo "- pnpm"
brew install pnpm --quiet &>/dev/null

echo "- vscode"
brew install --cask visual-studio-code --quiet &>/dev/null
sudo mkdir -p /usr/local/bin
sudo ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" "/usr/local/bin/code"

echo "- docker"
brew install --cask docker --quiet &>/dev/null

echo "- hammerspoon"
brew install --cask hammerspoon --quiet &>/dev/null

echo "- karabiner-elements"
brew install --cask karabiner-elements --quiet &>/dev/null

echo "- hiddenbar"
brew install --cask hiddenbar --quiet &>/dev/null
