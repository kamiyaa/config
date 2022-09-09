#!/bin/bash

set -e

TIMEOUT=7000

dizi_output=$(dizi --query-all)

function get_val() {
	input="$1"
	pattern="$2"
	echo $(echo "$input" | grep "$pattern" | cut -d '=' -f 2 | xargs)
}

playlist_status=$(get_val "$dizi_output" "playlist.status")

file_name=$(get_val "$dizi_output" "song.file_name")

track_title=$(get_val "$dizi_output" "song.tag.tracktitle")

content=""

case "$playlist_status" in
	"file")
		playlist_index=$(get_val "$dizi_output" "playlist.index")
		playlist_len=$(get_val "$dizi_output" "playlist.length")
		playlist_index_plus=$(( playlist_index + 1 ))

		title="[dizi] #$playlist_index_plus of $playlist_len"
		if [[ -n "$track_title" ]]; then
			content="$track_title"
		else
			content="$file_name"
		fi

		progress=$(( "$playlist_index" * 100 / "$playlist_len" ))
		notify-send -a 'dizi' -t "$TIMEOUT" "$title" "$content" -h "int:value:${progress}"
	;;
	"directory")
		title='[dizi]'
		if [[ -n "$track_title" ]]; then
			content="$track_title"
		else
			content="$file_name"
		fi
		notify-send -a 'dizi' -t "$TIMEOUT" "$title" "$content"
	;;
esac
