#!/bin/bash

WPCTL_OUTPUT=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if echo "$WPCTL_OUTPUT" | grep -q "Mute: true"; then
  echo "muted"
  exit 0
fi

VOLUME_FLOAT=$(echo "$WPCTL_OUTPUT" | sed -n 's/^Volume: \([0-9.]*\).*/\1/p')

VOLUME_PERCENT=$(printf "%.0f" "$(echo "$VOLUME_FLOAT * 100" | bc -l)")

echo "${VOLUME_PERCENT}%"
