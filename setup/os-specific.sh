#!/usr/bin/env bash

if [[ $OSTYPE == 'darwin'* ]]; then
  . setup/os-specific/mac.sh
else
  . setup/os-specific/linux.sh
fi
