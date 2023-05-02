#!/bin/bash

TOFI_CONFIG=~/.config/tofi/tofi.toml

input=$(echo -e 'yes\nno' | tofi --prompt-text 'shutdown?' --config $TOFI_CONFIG)

if test "$input" = 'yes'; then
	sudo systemctl poweroff
else
	notify-send "shutdown cancelled"
fi
