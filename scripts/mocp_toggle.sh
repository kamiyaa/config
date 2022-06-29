#!/bin/dash

mocp -G

STATE=`mocp -Q '%state'`
TITLE=`mocp -Q '%title'`
notify-send "$STATE" "$TITLE"
