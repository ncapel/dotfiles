#!/bin/bash

# Requires `acpi`
battery=$(acpi -b)

# Get percentage and status
percent=$(echo "$battery" | grep -o '[0-9]\+%' | tr -d '%')
status=$(echo "$battery" | awk '{print $3}' | tr -d ',')

# Choose icon based on percentage
if [[ "$status" == "Charging" ]]; then
    icon="⚡"
elif (( percent >= 90 )); then
    icon=""
elif (( percent >= 70 )); then
    icon=""
elif (( percent >= 50 )); then
    icon=""
elif (( percent >= 30 )); then
    icon=""
else
    icon=""
fi

echo "$icon $percent%"
