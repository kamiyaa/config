#!/bin/bash

CSV_FILE="$1"

TOFI_CONFIG=~/.config/tofi/tofi.toml

selected=$(cat "$CSV_FILE" | tr ',' ' ' | tofi --config "$TOFI_CONFIG")
if test "$selected" != ''; then
	clipboard_content=$(echo "$selected" | cut -d ' ' -f 1)
	wl-copy "$clipboard_content"
	notify-send "copied '$clipboard_content' to clipboard"
else
	notify-send 'cancelled'
fi
