#!/usr/bin/env bash

# reject sudo mode
if [[ $(id -u) == 0 ]] && [[ "$SUDO_COMMAND" ]]; then
  # sudo messes with the $HOME variable, which would cause tools to be installed in incorrect paths
  echo "sudo detected, aborting"
  echo "Running the script as sudo changes the \$HOME variable, which causes the script to install tools to incorrect paths"
  echo "Instead, run $0 directly. The script will request your password for privileged commands as needed"
  exit 1
fi

if [[ $OSTYPE == 'darwin'* ]]; then
  script_os=MacOS
  script_pm=brew
else
  script_os=Linux
  script_pm=apt
fi

echo "Detected $script_os, running installation. Your password may be requested to run privileged commands"
echo "- package manager: $script_pm"

printf "\nEnsuring root access...\n"

sudo -v
# keep-alive: update existing sudo time stamp if set, otherwise do nothing
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# cd into source directory
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "$dir"

. setup/os-specific.sh
. setup/shell.sh
. setup/symlinks.sh
. setup/tools.sh
. setup/languages.sh
. setup/cleanup.sh

printf "\nAll done! To finish setting up, you need to manually complete the following\n"
echo "- configure your terminal and IDEs to use Fira Code Nerd Font Mono (already set up in wezterm)"
echo "- restart your shell"
echo "  Simply run \`zsh\`"
echo "  Instructions: https://github.com/tonsky/FiraCode/wiki#enabling-ligatures"
echo "- configure git to use your own name, email, and gpg key"
echo "  Instructions: https://github.com/alexander-ding/.dotfiles/tree/main/docs/git.md"
echo "- (macOS only) restart your computer to apply system setting changes"
printf "\nEnjoy!\n"
