#!/usr/bin/env bash

if [[ $OSTYPE == 'darwin'* ]]; then
  . setup/tools/homebrew.sh
else
  . setup/tools/apt-get.sh
fi
