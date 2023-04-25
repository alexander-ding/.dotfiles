#!/usr/bin/env bash

ICON_COLOR=0xfff5bde6

ICON=󰖪
LABEL="No Network"

if [[ $INFO != "" ]]; then
  ICON=󰖩
  LABEL=$INFO
fi

sketchybar --set $NAME icon=$ICON label="$LABEL" icon.color=${ICON_COLOR}
