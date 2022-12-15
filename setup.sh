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

echo "Detected $script_os, running installation. Your password may be requested throughout the installation process to run privileged commands"
echo "- package manager: $script_pm"

sudo true # preauthorize to cache user password

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
echo "- configure your terminal to use the MesloLGS NF font"
echo "- restart your shell"
echo "  Simply run \`zsh\`"
echo "- configure your IDEs to use FiraCode"
echo "  Instructions: https://github.com/tonsky/FiraCode/wiki#enabling-ligatures"
echo "- configure git to use your own username, email, and gpg key"
echo "  Instructions: https://github.com/alexander-ding/.dotfiles/tree/main/docs/git.md"
printf "\nEnjoy!\n"
