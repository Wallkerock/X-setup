#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top -r &
#polybar -c ~/.config/polybar/bar-top top &
#polybar -c ~/.config/polybar/bar-bottom  bottom &

echo "Bars launched..."
