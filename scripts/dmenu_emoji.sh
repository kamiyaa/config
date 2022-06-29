#!/bin/dash

EMOJI_FILE=~/.bin/emoji_list.csv

selected=$(cat "$EMOJI_FILE" | dmenu -l 5)
if test "$selected" != ''
then
    clipboard_content=$(echo "$selected" | cut -d ',' -f 2)
	wl-copy "$clipboard_content"
	notify-send "copied $clipboard_content to clipboard"
else
	notify-send 'cancelled'
fi
