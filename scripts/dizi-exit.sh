#!/bin/dash

APP='dizi'

if $(dizi --exit 2>/dev/null >/dev/null)
then
	notify-send -a "$APP" "killing $APP"
else
	notify-send -a "$APP" "$APP is not running"
fi
