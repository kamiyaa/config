#!/bin/bash

bar_id=$1

swaybar_mode=$(swaymsg -t get_bar_config "$bar_id" | grep '"mode"')

if echo "$swaybar_mode" | grep 'dock' >/dev/null 2>/dev/null; then
	swaymsg "bar $bar_id mode invisible"
else
	swaymsg "bar $bar_id mode dock"
fi
