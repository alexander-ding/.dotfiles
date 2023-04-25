#!/usr/bin/env bash

net=(
  script="$PLUGIN_DIR/net.sh"
)

sketchybar --add item net right \
  --set net "${net[@]}" \
  --subscribe net wifi_change
