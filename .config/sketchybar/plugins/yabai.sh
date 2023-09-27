#!/usr/bin/env bash

windows_on_spaces() {
  CURRENT_SPACES="$(yabai -m query --displays | jq -r '.[].spaces | @sh')"

  args=(--set spaces_bracket drawing=off --set '/space\..*/' background.drawing=on)
  while read -r line; do
    for space in $line; do
      icon_strip=" "
      apps=$(yabai -m query --windows --space $space | jq -r ".[].app")
      echo "${apps} ${space}"
      drawing=off
      icon_padding_right=10
      if [ "$apps" != "" ]; then
        while IFS= read -r app; do
          icon_strip+=" $($HOME/.config/sketchybar/plugins/icon_map.sh "$app")"
        done <<<"$apps"
        drawing=on
        icon_padding_right=2
      fi
      args+=(--set space.$space label="$icon_strip" label.drawing=$drawing icon.padding_right=$icon_padding_right)
    done
  done <<<"$CURRENT_SPACES"

  sketchybar -m "${args[@]}"
}

mouse_clicked() {
  yabai -m window --toggle float
}

case "$SENDER" in
"mouse.clicked")
  mouse_clicked
  ;;
"forced")
  exit 0
  ;;
"window_focus")
  exit 0
  ;;
"windows_on_spaces")
  windows_on_spaces
  ;;
esac
