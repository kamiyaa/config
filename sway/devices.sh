set $bg_1 /home/kamiyaa/wallpapers/Anime_Scenery_046-001.png

output "HDMI-A-1" {
	background $bg_1 fill
	resolution 1920x1080@60Hz
	position 1920,0
}
output "eDP-1" {
	background $bg_1 fill
	resolution 1920x1080@60Hz
	position 0,0
	disable
}
# output eDP-1 disable
# output HDMI-A-1 layout none mirror eDP-1

input "2:7:SynPS/2_Synaptics_TouchPad" {
        dwt enabled
        natural_scroll enabled
        pointer_accel 0.3
        scroll_method two_finger
        tap enabled
}

input "7119:5:USB_Optical_Mouse" {
#	left_handed enabled
}

input "1:1:AT_Translated_Set_2_keyboard" {
	xkb_options "ctrl:nocaps"
	repeat_delay 300
	repeat_rate 20
}

input "1452:591:Keychron_Keychron_K3" {
	xkb_options "ctrl:nocaps"
	repeat_delay 300
	repeat_rate 20
}

#seat "seat0" {
#	hide_cursor when-typing enable
#}
