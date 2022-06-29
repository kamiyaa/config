#!/bin/dash

dizi --toggle-pause

title=$(dizi -q '{file_name}')

content=$title

notify-send -a 'dizi' -t 5000 '[dizi] Toggle Pause' "$content"
