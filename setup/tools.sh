#!/usr/bin/env bash

if [[ $OSTYPE == 'darwin'* ]]; then
  . setup/tools/mac.sh
else
  . setup/tools/linux.sh
fi
