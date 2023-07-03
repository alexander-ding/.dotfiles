#!/usr/bin/env bash

sketchybar --add event unlock com.apple.screenIsUnlocked

sketchybar --add item volume right \
  --set volume \
  icon.color=0xff8aadf4 \
  icon.padding_right=7 \
  label.drawing=true \
  script="$PLUGIN_DIR/volume.sh" \
  --subscribe volume volume_change unlock
