#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

# first polybar at top
if type "xrandr" > /dev/null; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload topbar -c ~/.config/polybar/config &
	done
else
	polybar --reload topbar -c ~/.config/polybar/config &
fi

# second polybar at bottom
if type "xrandr" > /dev/null; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload bottombar -c ~/.config/polybar/config &
	done
else
	polybar --reload bottombar -c ~/.config/polybar/config &
fi
