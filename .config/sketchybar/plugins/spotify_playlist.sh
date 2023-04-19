#!/usr/bin/env bash

case "$SENDER" in
"mouse.clicked")
  osascript -e 'tell application "Spotify" to play next track'
  ;;
esac
