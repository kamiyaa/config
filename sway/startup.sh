# Programs to start when starting sway

exec mako --config ~/.config/mako/mako.toml
# exec tsuchita-server
exec ibus-daemon -drx
exec dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

exec gammastep
# exec kanshi

#exec swayidle \
#	timeout 600 'swaymsg "output * dpms off"'

#exec swayidle \
#	timeout 900 'swaylock'
#
# exec redshift -l 43:80 -g 1:0.75:0.60
