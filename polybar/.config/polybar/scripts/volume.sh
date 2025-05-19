#!/bin/bash

WPCTL_OUTPUT=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if [[ $WPCTL_OUTPUT == *"MUTED"* ]]; then
  echo "muted"
  exit 0
fi

VOLUME=$(echo "$WPCTL_OUTPUT" | sed -n 's/^Volume: \([0-9.]*\).*/\1/p')

if [[ $VOLUME == *"."* ]]; then
  VOLUME=$(echo "scale=0; $VOLUME / 1" | bc)
fi

echo "${VOLUME}%"
