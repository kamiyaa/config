#!/bin/bash

TOFI_CONFIG=~/.config/tofi/tofi.toml

input=$(sh -c "echo -e 'yes\nno' | tofi --prompt-text 'shutdown?' --config $TOFI_CONFIG")

if test "$input" = 'yes'; then
	sudo systemctl poweroff
else
	notify-send "shutdown cancelled"
fi
