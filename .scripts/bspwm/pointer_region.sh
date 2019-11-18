#!/bin/sh

## This script allows to preselect the next window split
## direction for bspwm with the mouse.
##
## Usage Example (add to .sxhkdrc):
## super + ctrl + {_,shift + } button3
## 	bspc node {,$(xdotool getmouselocation | awk -F'[ :]' '\{ print $8 \}')} \
##		-p $(~/.config/sxhkd/scripts/pointer_region.sh {active,all})
##
## Author: notuxic
## License: CC0


## Load all relevant values into environmental variables,
## abort if moused-over window is not active window

eval $(xdotool getmouselocation --shell)

if [ $1 != "all" ] && [ $WINDOW != $(xdotool getactivewindow) ]
then
	echo "none"
	exit 1
fi

eval $(xwininfo -id $WINDOW | grep -- -geometry \
	| awk -F'[ x+-]' '{ print "WIDTH=" $5 "\nHEIGHT=" $6 }')
eval $(xwininfo -id $WINDOW | grep Absolute | tr '\n' ' ' \
	| awk '{ print "RX=" $4 "\nRY=" $8 }')


## Define bc script and pass environmental variables

SCRIPT=$(cat << EOS
## load ENV variables into bc variables 
pointer_x = $X;
pointer_y = $Y;
corner_lu_x = $RX;
corner_lu_y = $RY;
window_width = $WIDTH;
window_height = $HEIGHT;
## Implement atan2, range: (0; 2 * pi]
pi = 4 * a(1);
define atan2(y, x) {
	if (x > 0 && y >= 0) {
		return a(y / x);
	}
	if (x > 0 && y < 0) {
		return (2 * pi + a(y / x));
	}
	if (x < 0) {
		return (a(y / x) + pi);
	}
	if (x == 0 && y > 0) {
		return (pi / 2);
	}
	if (x == 0 && y < 0) {
		return (3 * pi / 2);
	}
}
## Calculate coords of origin (ie. center of window) 
origin_x = corner_lu_x + ( window_width / 2);
origin_y = corner_lu_y + ( window_height / 2);
## Translate mouse coords and upper-left window corner coords
## to cartesian coordinate system with center of moused-over
## window as origin 
pointer_x = pointer_x - origin_x;
pointer_y = origin_y - pointer_y;
corner_lu_x = corner_lu_x - origin_x;
corner_lu_y = origin_y - corner_lu_y;
## Translate cartesian coords to polar coords (only calculating
## the angles), and calculate angles of remaining window corners 
pointer_theta = atan2(pointer_y, pointer_x);
corner_lu_theta = atan2(corner_lu_y, corner_lu_x);
corner_ru_theta = atan2(corner_lu_y, - corner_lu_x);
corner_ll_theta = corner_ru_theta + pi;
corner_rl_theta = corner_lu_theta + pi;
## Print cardinal direction (north, east, south, west) depending on
## pointer angle in relation to corner angles. 
if (pointer_theta >= corner_ru_theta && pointer_theta < corner_lu_theta) {
	print "north";
}
if (pointer_theta >= corner_lu_theta && pointer_theta < corner_ll_theta) {
	print "west";
}
if (pointer_theta >= corner_ll_theta && pointer_theta < corner_rl_theta) {
	print "south";
}
if (pointer_theta >= corner_rl_theta || pointer_theta < corner_ru_theta) {
	print "east";
}
EOS
)


## Execute bc script

echo "$SCRIPT" | bc -l