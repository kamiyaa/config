#!/bin/dash

input=`sh -c "echo -e 'yes\nno' | dmenu -p 'shutdown'"`

if test "$input" = 'yes'
then
	sudo systemctl poweroff
else
	notify-send "shutdown cancelled"
fi
