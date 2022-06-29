#!/bin/dash

if `mocp -x 2>/dev/null >/dev/null`
then
	notify-send 'killing mocp'
else
	notify-send 'mocp is not running'
fi
