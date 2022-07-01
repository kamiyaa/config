#!/bin/bash

# pactl set-sink-volume @DEFAULT_SINK@ ${CHANGE}%

pamixer $@

muted=$(pamixer --get-mute)
volume=$(pamixer --get-volume)

if [ $muted = true ]; then
	notify-send -a "pamixer" "${volume}% (muted)" -h "int:value:${volume}" -t 2000
else
	notify-send -a "pamixer" "${volume}%" -h "int:value:${volume}" -t 2000
fi
