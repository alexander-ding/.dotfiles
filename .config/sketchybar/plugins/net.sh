#!/usr/bin/env bash

ICON_COLOR=0xfff5bde6
MAX_LENGTH=18

ICON=󰖪
LABEL="No Network"

if [[ $INFO != "" ]]; then
  ICON=󰖩
  LABEL=$INFO
fi

if [ ${#LABEL} -gt $MAX_LENGTH ]; then
  LABEL="${LABEL:0:$((MAX_LENGTH - 2))}…"
fi

sketchybar --set $NAME icon=$ICON label="$LABEL" icon.color=${ICON_COLOR}
