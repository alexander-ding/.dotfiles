#!/usr/bin/env bash
printf "\nExecuting MacOS-specific setups\n"
echo "- always show hidden files"
defaults write com.apple.finder AppleShowAllFiles TRUE
