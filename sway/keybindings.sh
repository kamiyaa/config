##############
# Variables
##############
set $mod		Mod1
set $super		Mod4
# set $term gnome-terminal
# set $term		alacritty
set $term		gnome-terminal
set $altterm		st

set $menu		tofi-run --config ~/.config/tofi/tofi.toml | xargs swaymsg exec --

set $browser		firefox-wayland
set $alt_browser	google-chrome-stable --force-device-scale-factor=1.1

set $laptop-display	'eDP-1'
set $hdmi-diplay	'HDMI-A-1'

# Drag floating windows by holding down $mod and left mouse button.
# Resize them with right mouse button + $mod.
# Despite the name, also works for non-floating windows.
# Change normal to inverse to use left mouse button for resizing and right
# mouse button for dragging.
floating_modifier $mod normal

##############
# Keybindings
##############

# start launcher
bindsym $mod+p	exec $menu

### emojis
bindsym $mod+e	exec tofi_csv.sh ~/builds/config/scripts/emoji_list.csv
bindsym $mod+u	exec tofi_csv.sh ~/builds/config/scripts/autocomplete_chinese.csv
### toggle swaybar
bindsym $mod+b	exec swaybar_toggle.sh 0

# terminal
bindsym $mod+Shift+Return	exec $term
bindsym $mod+Shift+apostrophe	exec $altterm

# kill focused window
bindsym $mod+Shift+c	kill

## dpms
bindsym $mod+Shift+z	exec swaymsg "output DP-1 dpms off"
bindsym $mod+z		exec swaymsg "output DP-1 dpms on"

# bindsym $mod+slash		exec swaymsg "output $hdmi-diplay dpms on"
# bindsym $mod+Shift+slash	exec swaymsg "output $hdmi-diplay dpms off"

## brightness
# bindsym XF86MonBrightnessDown		exec arclight -i intel_backlight -d 5
# bindsym XF86MonBrightnessUp		exec arclight -i intel_backlight -u 5
# bindsym $mod+F5			exec arclight -i intel_backlight -d 5
# bindsym $mod+F6			exec arclight -i intel_backlight -u 5

## audio
# bindsym $mod+F1		exec pamixer_notify.sh -t
# bindsym $mod+F2		exec pamixer_notify.sh -d 5
# bindsym $mod+F3		exec pamixer_notify.sh -i 5

bindsym XF86AudioMute		exec pamixer_notify.sh -t
bindsym XF86AudioMicMute	exec pamixer_notify.sh --source 69 -t

bindsym XF86AudioRaiseVolume	exec pamixer_notify.sh -i 2
bindsym XF86AudioLowerVolume	exec pamixer_notify.sh -d 2
bindsym $mod+F11		exec pamixer_notify.sh -i 2
bindsym $mod+F10		exec pamixer_notify.sh -d 2
bindsym $mod+F9			exec pamixer_notify.sh -t

## screenshot
bindsym $mod+Print		exec grim_auto.sh
bindsym $mod+Shift+Print	exec swappy_interactive.sh
bindsym $mod+s			exec "$term" --command joshuto "/tmp/$USER"
# bindsym $mod+Shift+Print	exec grim_interactive.sh "/tmp/$USER"

## dizi
bindsym $mod+minus		exec dizi-toggle.sh
bindsym $mod+equal		exec dizi-exit.sh
bindsym $mod+bracketleft	exec dizi --previous
bindsym $mod+bracketright	exec dizi --next
bindsym XF86AudioPrev		exec dizi --previous
bindsym XF86AudioNext		exec dizi --next
bindsym XF86AudioPlay		exec dizi-toggle.sh
bindsym $mod+F5			exec dizi-exit.sh
bindsym $mod+F6			exec dizi --previous
bindsym $mod+F8			exec dizi --next
bindsym $mod+F7			exec dizi-toggle.sh

## mocp
# bindsym $mod+minus		exec mocp_toggle.sh
# bindsym $mod+equal		exec mocp_exit.sh
# bindsym $mod+bracketleft	exec mocp -r
# bindsym $mod+bracketright	exec mocp -f
# bindsym XF86AudioPrev		exec mocp -r
# bindsym XF86AudioNext		exec mocp -f

## misc

# bindsym $mod+o exec rlaunch -h 40 -f 'Open Sans'

bindsym $mod+a mode "[audio]"
mode "[audio]" {
	bindsym Up	exec pamixer_notify.sh -i 1
	bindsym Down	exec pamixer_notify.sh -d 1

	bindsym Prior	exec pamixer_notify.sh -i 5
	bindsym Next	exec pamixer_notify.sh -d 5
	bindsym Escape	mode "default"
}

bindsym $mod+i mode "[switch keyboard language]  e | c | z"
mode "[switch keyboard language]  e | c | z" {
	bindsym e	exec ibus engine xkb:us::eng;	mode "default"
	bindsym c	exec ibus engine libpinyin;	mode "default"
	bindsym z	exec ibus engine libbopomofo;	mode "default"
	bindsym Escape	exec ibus engine xkb:us::eng;   mode "default"
}

## enable/disable different monitors
bindsym $super+Tab mode "[enable screen] 0: eDP; 1: HDMI"
mode "[enable screen] 0: eDP; 1: HDMI" {
	bindsym 0	exec swaymsg "output $laptop-display enable";	mode "default"
	bindsym 1	exec swaymsg "output $hdmi-diplay enable";	mode "default"
	bindsym Escape	mode "default"
}

bindsym $super+e mode "[disable screen] 0: eDP; 1: HDMI"
mode "[disable screen] 0: eDP; 1: HDMI" {
	bindsym 0	exec swaymsg "output $laptop-display disable";	mode "default"
	bindsym 1	exec swaymsg "output $hdmi-diplay disable";	mode "default"
	bindsym Escape	mode "default"
}

# reload the configuration file
bindsym $mod+Shift+r reload

# restart sway inplace (preserves your layout/session, can be used to upgrade sway)
# bindsym $mod+Shift+e restart

# exit sway (logs you out of your wayland session)
bindsym $mod+Ctrl+Backspace exit
# exit sway (logs you out of your wayland session)
# bindsym $mod+Ctrl+Backspace exec shutdown.sh

# Move your focus around with $mod+[h|j|k|l], like vim
bindsym $mod+Shift+backslash	focus up
bindsym $mod+backslash		focus down
bindsym $mod+Shift+Tab		focus left
bindsym $mod+Tab		focus right
#bindsym $mod+k focus up
#bindsym $mod+j focus down
#bindsym $mod+h focus left
#bindsym $mod+l focus right

bindsym $mod+Shift+Left		move left
bindsym $mod+Shift+Down		move down
bindsym $mod+Shift+Up		move up
bindsym $mod+Shift+Right	move right

bindsym $mod+comma	resize shrink width 5
bindsym $mod+period	resize grow width 5


bindsym $mod+1	workspace 1
bindsym $mod+2	workspace 2
bindsym $mod+3	workspace 3
bindsym $mod+4	workspace 4
bindsym $mod+5	workspace 5
bindsym $mod+6	workspace 6
bindsym $mod+7	workspace 7
bindsym $mod+8	workspace 8
bindsym $mod+9	workspace 9

#	bindsym $mod+0 workspace 10
# move focused container to workspace
bindsym $mod+Shift+1	move window to workspace 1
bindsym $mod+Shift+2	move window to workspace 2
bindsym $mod+Shift+3	move window to workspace 3
bindsym $mod+Shift+4	move window to workspace 4
bindsym $mod+Shift+5	move window to workspace 5
bindsym $mod+Shift+6	move window to workspace 6
bindsym $mod+Shift+7	move window to workspace 7
bindsym $mod+Shift+8	move window to workspace 8
bindsym $mod+Shift+9	move window to workspace 9
bindsym $mod+Shift+0	sticky toggle

# Switch the current container between different layout styles
bindsym $mod+t		layout toggle split
bindsym $mod+w		layout tabbed
bindsym $mod+Shift+w	layout stacking

# Make the current focus fullscreen
bindsym $mod+m fullscreen

# Toggle the current focus between tiling and floating mode
bindsym $mod+Shift+space floating toggle

# move focus to the parent container
# bindsym $mod+Return focus parent

# include /etc/sway/config.d/*

	# bindsym $mod+z exec swaymsg 'output eDP-1 dpms on'
	#	bindsym $mod+Shift+z exec swaymsg "output * dpms off"
	#	bindsym $mod+Shift+z exec swaymsg 'output * dpms toggle'
	#	bindsym XF86Tools exec swaymsg "output * dpms on"
	#	XF86Display

	#	bindsym XF86WakeUp+XF86AudioRaiseVolume exec amixer -q set Master 2%+
	#	bindsym XF86WakeUp+XF86AudioLowerVolume exec amixer -q set Master 2%-
	#	bindsym XF86WakeUp+XF86AudioMute exec amixer -q set Master toggle

	#	bindsym XF86MonBrightnessUp exec xbacklight -inc 5
	#	bindsym XF86MonBrightnessDown exec xbacklight -dec 5

# extra keys
#	bindsym XF86Calculator exec st -e python
#	bindsym Mod4+l exec swaylock --color 000000
#	bindsym XF86Home` exec $browser
#	bindsym $mod+XF86HomePage exec $alt_browser
#	bindsym XF86MyComputer exec $fm

#
# Moving around:
#

### Key bindings
#
# Basics:
#

	# or use $mod+[up|down|left|right]
	# bindsym $mod+Left focus left
	# bindsym $mod+Down focus down
	# bindsym $mod+Up focus up
	# bindsym $mod+Right focus right

	# _move_ the focused window with the same, but add Shift
	# bindsym $mod+Shift+h move left
	# bindsym $mod+Shift+j move down
	#bindsym $mod+Shift+k move up
	# bindsym $mod+Shift+l move right
	# ditto, with arrow keys
#
# Scratchpad:
#
	# Sway has a "scratchpad", which is a bag of holding for windows.
	# You can send windows there and get them back later.

	# Move the currently focused window to the scratchpad
	# bindsym $mod+Shift+minus move scratchpad

	# Show the next scratchpad window or hide the focused scratchpad window.
	# If there are multiple scratchpad windows, this command cycles through them.
	# bindsym $mod+minus scratchpad show

#
# Resizing containers:
#
# bindsym $mod+r mode 'resize'
# mode 'resize' {
	# left will shrink the containers width
	# right will grow the containers width
	# up will shrink the containers height
	# down will grow the containers height
	# bindsym $left resize shrink width 10 px or 10 ppt
	# bindsym $down resize grow height 10 px or 10 ppt
	# bindsym $up resize shrink height 10 px or 10 ppt
	# bindsym $right resize grow width 10 px or 10 ppt

	# ditto, with arrow keys
#	bindsym Left resize shrink width 10 px or 10 ppt
#	bindsym Down resize grow height 10 px or 10 ppt
#	bindsym Up resize shrink height 10 px or 10 ppt
#	bindsym Right resize grow width 10 px or 10 ppt

	# return to default mode
	# bindsym Return mode 'default'
#	bindsym Escape mode 'default'

# }

#
# Status Bar:
#
# Read `man 5 sway-bar` for more information about this section.
