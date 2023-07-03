#!/usr/bin/env bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

sketchybar --add event spotify_change $SPOTIFY_EVENT \
  --add item spotify center \
  --set spotify \
  icon= \
  icon.font="$FONT:Bold:20.0" \
  icon.y_offset=1 \
  label.drawing=off \
  label.padding_left=2 \
  script="$PLUGIN_DIR/spotify.sh" \
  --subscribe spotify spotify_change mouse.clicked
