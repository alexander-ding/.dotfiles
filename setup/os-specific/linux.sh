#!/usr/bin/env bash

printf "\nExecuting Linux-specific setups\n"
echo "- expect"
sudo apt-get -qq install expect &>/dev/null
echo "- build-essential"
sudo apt-get -qq install build-essential &>/dev/null
echo "- fontconfig"
sudo apt-get -qq install fontconfig &>/dev/null
echo "- git"
sudo apt-get -qq install git-all &>/dev/null
echo "- curl"
sudo apt-get -qq install curl &>/dev/null
