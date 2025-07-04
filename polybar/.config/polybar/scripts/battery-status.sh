#!/bin/bash

battery=$(acpi -b)

percent=$(echo "$battery" | grep -o '[0-9]\+%' | tr -d '%')
status=$(echo "$battery" | awk '{print $3}' | tr -d ',')


# echo "$icon $percent%"

echo "$percent%"
