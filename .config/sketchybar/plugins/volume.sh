#!/usr/bin/env sh

if [ $SENDER = "unlock" ]; then
  "$HOME/.config/skhd/switch_audio.sh" mute-if-builtin
fi

case ${INFO} in
[6-9][0-9] | 100)
  ICON="􀊩"
  ICON_PADDING_RIGHT=9
  ;;
[1-5][0-9] | [1-9])
  ICON="􀊥"
  ICON_PADDING_RIGHT=15
  ;;
*)
  ICON="􀊣"
  ICON_PADDING_RIGHT=15
  ;;
esac

# Volume Icons
OUTPUT_NAME=$($HOME/.config/skhd/switch_audio.sh current-output)
sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT label="$OUTPUT_NAME"
