#!/bin/bash

set -e

file_name=$(dizi -q '{file_name}')
playlist_status=$(dizi -q '{playlist_status}')

if [ "$playlist_status" = "file" ]; then
	res=$(dizi -q '{playlist_index},{playlist_length}')
	playlist_index=$(echo "$res" | cut -d ',' -f 1)
	playlist_index=$((playlist_index + 1))
	playlist_len=$(echo "$res" | cut -d ',' -f 2)

	title="[dizi] Now playing #$playlist_index of $playlist_len"
	content="$file_name"
	notify-send -a 'dizi' -t 5000 "$title" "$content"
else
	title='[dizi] Now playing'
	content="$file_name"
	notify-send -a 'dizi' -t 5000 "$title" "$content"
fi
