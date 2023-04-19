#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i + 1))

  space=(
    associated_space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=2
    padding_left=2
    padding_right=2
    label.padding_right=16
    icon.color=0xffcad3f5
    icon.highlight_color=0xffed8796
    label.color=0xff939ab7
    label.highlight_color=0xffcad3f5
    label.font="sketchybar-app-font:Regular:14.0"
    label.y_offset=-1
    background.color=0x4fa5adcb
    background.drawing=on
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
  )

  sketchybar --add space space.$sid left \
    --set space.$sid "${space[@]}" \
    --subscribe space.$sid mouse.clicked
done

new_space=(
  icon=󰼍
  icon.font="$FONT:Bold:15.0"
  icon.color=0xff24273a
  icon.drawing=on
  icon.padding_right=0
  background.padding_left=4
  background.padding_right=10
  background.color=0xfff5a97f
  click_script='yabai -m space --create && sketchybar --trigger space_change'
)

sketchybar --add bracket spaces_bracket '/space\..*/' \
  \
  --add item new_space left \
  --set new_space "${new_space[@]}"
