#!/bin/bash

TOFI_CONFIG=~/.config/tofi/tofi_theme1.toml

input=$(echo -e 'yes\nno' | tofi --prompt-text 'exit sway?' --config $TOFI_CONFIG)

if test "$input" = 'yes'; then
	swaymsg 'exit'
else
	notify-send "exit cancelled"
fi
