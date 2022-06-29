#!/bin/bash

DIR=/tmp/$USER

DATE=$(date '+%Y%m%d_%H%M%S_%N')
CURRENT_MONITOR=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')

grim -o "$CURRENT_MONITOR" "${DIR}/${DATE}_grim.png"
