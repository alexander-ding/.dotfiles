#!/usr/bin/env bash

if ! command -v SwitchAudioSource &> /dev/null; then
  brew install switchaudio-osx
fi

CURRENT_INPUT_UID=$(SwitchAudioSource -c -t input -f json | jq -r .uid)
CURRENT_OUTPUT_UID=$(SwitchAudioSource -c -t output -f json | jq -r .uid)
CURRENT_OUTPUT_NAME=$(SwitchAudioSource -c -t output -f json | jq -r .name)
BUILTIN_INPUT_UID="BuiltInMicrophoneDevice"
BUILTIN_OUTPUT_UID="BuiltInSpeakerDevice"
AIRPODS_UID=$(SwitchAudioSource -a -f json | grep -e 'AirPods Pro' | jq -r .uid | tr ":" "\n" | head -n 1)
AIRPODS_INPUT_UID="$AIRPODS_UID:input"
AIRPODS_OUTPUT_UID="$AIRPODS_UID:output"
case $1 in
  builtin)
    SwitchAudioSource -t input -u "$BUILTIN_INPUT_UID" && SwitchAudioSource -t output -u "$BUILTIN_OUTPUT_UID"
    ;;
  airpods)
    SwitchAudioSource -t input -u "$AIRPODS_INPUT_UID" && SwitchAudioSource -t output -u "$AIRPODS_OUTPUT_UID"
    ;;
  mute)
    SwitchAudioSource -t output -m mute
    ;;
  unmute)
    SwitchAudioSource -t output -m unmute
    ;;
  mute-toggle)
    SwitchAudioSource -t output -m toggle
    ;;
  mute-if-builtin)
    if [ $CURRENT_OUTPUT_UID = $BUILTIN_OUTPUT_UID ]; then
      SwitchAudioSource -t output -m mute
    fi
    ;;
  current-output)
    echo $CURRENT_OUTPUT_NAME
    ;;
esac

