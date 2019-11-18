#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar bspwm-config -r &
polybar -c ~/.config/polybar/bspwm-config bspwm-config &

echo "Bar launched..."
