#!/usr/bin/env bash

printf "\nInstalling tools\n"

echo "- update apt-get"
sudo apt-get -qq update >/dev/null

echo "- cargo"
# cargo is needed for some tools, so we install it first
(curl https://sh.rustup.rs -sSf | sh -s -- -y -q) >/dev/null 2>/dev/null
. "$HOME/.cargo/env"

echo "- wget"
sudo apt-get -qq install wget >/dev/null

echo "- gpg"
sudo apt-get -qq install gpg >/dev/null

echo "- zip"
sudo apt-get -qq install zip >/dev/null

echo "- unzip"
sudo apt-get -qq install unzip >/dev/null

echo "- vim"
sudo apt-get -qq install vim >/dev/null
mkdir -p "$HOME/.vim/backups"
mkdir -p "$HOME/.vim/swaps"
mkdir -p "$HOME/.vim/undo"

echo "- neovim"
sudo apt-get -qq install neovim >/dev/null

echo "- tmux"
sudo apt-get -qq install tmux >/dev/null
git clone -q https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm" &>/dev/null
tmux start-server
tmux new-session -d
"$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh" >/dev/null
tmux kill-server
rm -rf ~/.tmux/resurrect

echo "- broot"
cargo install -q broot
broot --install >/dev/null

echo "- fd"
sudo apt-get -qq install fd >/dev/null

echo "- fzf"
git clone -q --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &>/dev/null
~/.fzf/install --all &>/dev/null

echo "- asdf"
git clone -q https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 &>/dev/null
. "$HOME/.asdf/asdf.sh"

echo "- direnv"
sudo apt-get -qq install direnv >/dev/null

echo "- kubectl"
asdf plugin add kubectl &>/dev/null
asdf install kubectl 1.26.0 &>/dev/null
asdf global kubectl 1.26.0

echo "- kubie"
cargo install -q kubie

echo "- pnpm"
curl -fsSL https://get.pnpm.io/install.sh | sh - &>/dev/null

echo "- espanso"
curl -fsSL https://github.com/federico-terzi/espanso/releases/download/v2.1.8/espanso-debian-x11-amd64.deb
sudo apt-get -qq install ./espanso-debian-x11-amd64.deb
rm espanso-debian-x11-amd64.deb
espanso service register &>/dev/null
espanso start &>/dev/null

echo "- vscode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg &>/dev/null
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/.s.list.d/vscode.list' &>/dev/null
rm -f packages.microsoft.gpg
sudo apt-get -qq install apt-transport-https &>/dev/null
sudo apt-get -qq update &>/dev/null
sudo apt-get -qq install code &>/dev/null

echo "- docker"
sudo apt-get -qq install docker &>/dev/null

echo "- wezterm"
curl -LO https://github.com/wez/wezterm/releases/download/20221119-145034-49b9839f/wezterm-20221119-145034-49b9839f.Ubuntu20.04.deb &>/dev/null
sudo apt install -y ./wezterm-20221119-145034-49b9839f.Ubuntu20.04.deb &>/dev/null
