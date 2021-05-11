# Programs to start when starting sway

exec mako
exec tsuchita-server
exec ibus-daemon -drx
exec gammastep &
exec kanshi

exec swayidle \
	timeout 600 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"'

#exec swayidle \
#	timeout 900 'swaylock'
#
# exec redshift -l 43:80 -g 1:0.75:0.60
