#!/usr/bin/env bash

ICON="$($HOME/.config/sketchybar/plugins/icon_map.sh "$INFO")"
sketchybar --set $NAME label=$ICON
sketchybar --set $NAME.name label="$INFO"
