#!/bin/dash

title=`mocp -Q %song`
album=`mocp -Q %album`

if test -z $title
then
	title=`mocp -Q %file`
fi

notify-send -t 5000 "$title" "$album"
