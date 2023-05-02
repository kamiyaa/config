#!/bin/bash

TOFI_CONFIG=~/.config/tofi/tofi.toml

APP='dizi'

input=$(echo -e 'yes\nno' | tofi --prompt-text "stop $APP?" --config $TOFI_CONFIG)

if test "$input" = 'yes'; then
	notify-send -a "$APP" "killing $APP"
	dizi --exit
else
	notify-send "Cancelled"
fi
