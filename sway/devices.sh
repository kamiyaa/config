# set $bg_1 /home/kamiyaa/wallpapers/scenery/Anime_Scenery_046-001.png
set $bg_1 /home/kamiyaa/wallpapers/scenery/Anime_Scenery_041.png

output "eDP-1" {
	background $bg_1 fill
}

output "HDMI-A-1" {
	background $bg_1 fill
#	position 0,0
}

output "DP-1" {
	background $bg_1 fill
#	position 0,0
}

output "DP-2" {
	background $bg_1 fill
	# transform 90
}
# output eDP-1 disable
# output HDMI-A-1 layout none mirror eDP-1

#input "7119:5:USB_Optical_Mouse" {
#	left_handed enabled
#}

input "7119:5:USB_Optical_Mouse" {
	pointer_accel 1
	scroll_factor 0.7
#	left_handed enabled
}

input "1452:591:Keychron_Keychron_K3" {
	xkb_options "ctrl:nocaps"
	repeat_delay 300
	repeat_rate 20
}

#seat "seat0" {
#	hide_cursor when-typing enable
#}

input "2:7:SynPS/2_Synaptics_TouchPad" {
	tap "enabled"
	pointer_accel 0.3
	scroll_factor 0.6
	scroll_method "two_finger"
	natural_scroll "enabled"
}
