#!/bin/dash

input=`sh -c "echo -e 'yes\nno' | dmenu -p 'reboot'"`

if test "$input" = 'yes'
then
	sudo systemctl reboot
else
	notify-send "reboot cancelled"
fi
