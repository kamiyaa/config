set $primary-dark-1	3E6E7A
set $primary-dark-2	5497A7
set $primary-dark-3	50858B

set $text-dark-1	f0f0f0

set $primary-light-1	62A8AC

set $bg-dark-1		1C2027
set $bg-dark-2		0c131aDD
set $bg-dark-3		0c131aCF
# set $primary-color 386296FF

font droid sans mono 20

# selector		border		background	text	indicator	child borders
client.focused		$primary-dark-2	$primary-dark-1	ffffff	$primary-dark-1 $primary-light-1
client.focused_inactive	202020 		202020		f0f0f0	202020
client.unfocused	202020 		202020		e0e0e0	202020

bar {
	id 0
	swaybar_command swaybar
	status_command dwmstatus
	position top
	modifier Mod1
	strip_workspace_name yes
	font droid sans mono 20
#	font terminus mono 14
#	gaps 0 360
#	mode hide
#	mode invisible
	wrap_scroll no
#	workspace_buttons no
	colors {
		background		$bg-dark-2

		# selector		# border	# background	text	indicator	child borders
		inactive_workspace	$bg-dark-3	$bg-dark-3	$text-dark-1
		active_workspace	$bg-dark-1	$bg-dark-1	$bg-dark-1
		focused_workspace	$primary-dark-2	$primary-dark-1	$text-dark-1

		statusline f0f0f0
		focused_background $bg-dark-2

#		focused_statusline #ffffff
#		focused_workspace #006f9b #00363A #fffff
	}
}
