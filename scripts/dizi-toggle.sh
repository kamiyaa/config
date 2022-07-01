#!/bin/dash

TIMEOUT=7000

dizi --toggle-pause

title=$(dizi -q '{file_name}')
content="$title"

notify-send -a 'dizi' -t "$TIMEOUT" '[dizi] Toggle Pause' "$content"
