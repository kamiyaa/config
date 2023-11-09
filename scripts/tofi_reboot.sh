#!/bin/bash

TOFI_CONFIG=~/.config/tofi/tofi_theme1.toml

input=$(sh -c "echo -e 'yes\nno' | tofi --prompt-text 'reboot?' --config $TOFI_CONFIG")

if test "$input" = 'yes'; then
	sudo systemctl reboot
else
	notify-send "reboot cancelled"
fi
