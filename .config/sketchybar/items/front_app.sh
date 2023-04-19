#!/bin/bash

yabai=(
  script="$PLUGIN_DIR/yabai.sh"
  updates=on
  drawing=off
  icon.font="$FONT:Bold:16.0"
  label.drawing=off
  associated_display=active
)

front_app=(
  background.color=0xffa6da95
  background.padding_left=0
  background.padding_right=0
  label.color=0xff24273a
  label.font="sketchybar-app-font:Regular:14.0"
  label.drawing=on
  label.padding_left=-10
  label.padding_right=4
  script="$PLUGIN_DIR/front_app.sh"
)

front_app_separator=(
  icon=
  background.padding_left=-1
  icon.font="$FONT:Bold:16.0"
  icon.color=0xffa6da95
  icon.padding_left=0
  icon.padding_right=0
  label.drawing=no
)

front_app_name=(
  icon.drawing=off
  label.color=0xffcad3f5
  label.drawing=on
)

sketchybar --add event window_focus \
  --add event windows_on_spaces \
  --add item yabai left \
  --set yabai "${yabai[@]}" \
  --subscribe yabai window_focus \
  windows_on_spaces \
  mouse.clicked \
  --add item front_app left \
  --set front_app "${front_app[@]}" \
  --add item front_app.separator left \
  --set front_app.separator "${front_app_separator[@]}" \
  --add item front_app.name left \
  --set front_app.name "${front_app_name[@]}" \
  --subscribe front_app front_app_switched \
  --add bracket front_app_bracket \
  front_app \
  front_app.separator \
  front_app.name \
  --subscribe front_app front_app_switched

source "$PLUGIN_DIR/yabai.sh"
windows_on_spaces
