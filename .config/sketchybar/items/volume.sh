#!/usr/bin/env bash

sketchybar --add item volume right \
  --set volume \
  icon.color=0xff8aadf4 \
  icon.padding_right=7 \
  label.drawing=no \
  script="$PLUGIN_DIR/volume.sh" \
  --subscribe volume volume_change
