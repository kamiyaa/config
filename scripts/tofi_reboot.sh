#!/bin/dash

TOFI_CONFIG=~/.config/tofi/tofi.toml

input=$(sh -c "echo -e 'yes\nno' | tofi --prompt-text 'reboot?' --config $TOFI_CONFIG")

if [[ "$input" = 'yes' ]]; then
	sudo systemctl reboot
else
	notify-send "reboot cancelled"
fi
