#!/usr/bin/env bash

printf "\nCleaning up\n"
echo "- remove lines in .zshrc inserted by setup scripts"
if [[ $OSTYPE == 'darwin'* ]]; then
  sed -i '' -e '/^### End of File ###$/q' .zshrc
else
  sed -i'' -e '/^### End of File ###$/q' .zshrc
fi

echo "- deleting zsh autocomplete history"
rm -f "$HOME/.zcompdump"
