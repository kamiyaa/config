#!/bin/bash

set -e

TIMEOUT=7000

file_name=$(dizi -q '{file_name}')
playlist_status=$(dizi -q '{playlist_status}')

case "$playlist_status" in
	"file")
		res=$(dizi -q '{playlist_index}:{playlist_length}')
		playlist_index=$(echo "$res" | cut -d ':' -f 1)
		playlist_len=$(echo "$res" | cut -d ':' -f 2)

		playlist_index_plus=$(( playlist_index + 1 ))

		title="[dizi] Now playing #$playlist_index_plus of $playlist_len"
		content="$file_name"

		progress=$(( "$playlist_index" * 100 / "$playlist_len" ))
		notify-send -a 'dizi' -t "$TIMEOUT" "$title" "$content" -h "int:value:${progress}"
	;;
	"directory")
		title='[dizi] Now playing'
		content="$file_name"
		notify-send -a 'dizi' -t "$TIMEOUT" "$title" "$content"
	;;
esac
