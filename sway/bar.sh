

set $win-focused-border 	728376
set $win-focused-bg		3e6e7a
set $win-focused-text		ffffff

set $win-unfocused-border	62A8AC
set $win-unfocused-bg		191919
set $win-unfocused-text		e0e0e0

set $bar-bg			0c131aDD

set $bar-inactive-bg		0c131aCF
set $bar-inactive-border	0c131aCF
set $bar-inactive-text		ffffff

set $bar-focused-border		5497A7FF
set $bar-focused-bg		5497A7FF
set $bar-focused-text		ffffff

# set $primary-color 386296FF

font droid sans mono 24

# selector	   border background text indicator child borders
client.focused     $win-focused-border \
			$win-focused-bg \
			$win-focused-text \
			$win-focused-bg \
			$win-focused-bg
client.unfocused   $win-unfocused-border \
			$win-unfocused-bg \
			$win-unfocused-text

bar {
	id 0
	swaybar_command swaybar
	status_command dwmstatus
	position top
	modifier Mod1
	strip_workspace_name yes
	font droid sans mono 24
#	font terminus mono 14
#	gaps 0 360
#	mode hide
#	mode invisible
	wrap_scroll no
#	workspace_buttons no
	colors {
		background		$bar-bg

		# selector  border  background  text  indicator  child  borders
		inactive_workspace	$bar-inactive-border	$bar-inactive-bg	$bar-inactive-text
		active_workspace	1C2027			1C2027			1C2027
		focused_workspace	$bar-focused-border	$bar-focused-bg		$bar-focused-text

		statusline		f0f0f0
		focused_background	$bar-bg

#		focused_statusline #ffffff
#		focused_workspace #006f9b #00363A #fffff
	}
}
