#!/bin/bash

EMOJI_FILE=~/builds/config/scripts/emoji_list.csv

TOFI_CONFIG=~/.config/tofi/tofi.toml

selected=$(cat "$EMOJI_FILE" | tr ',' ' ' | tofi --config "$TOFI_CONFIG")
if test "$selected" != ''; then
	clipboard_content=$(echo "$selected" | cut -d ' ' -f 1)
	wl-copy "$clipboard_content"
	notify-send "copied '$clipboard_content' to clipboard"
else
	notify-send 'cancelled'
fi
