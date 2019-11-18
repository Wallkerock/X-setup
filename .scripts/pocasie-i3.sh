#!/bin/bash

urxvt -geometry 125x44+450+150 -e bash -c 'curl sk.wttr.in/48.16,17.11; \
echo -e "\n\e[1;33mPress ENTER to exit:\e[0m"; read' &
pid="$!"

# Wait for the window to open and grab its window ID
winid=''
while : ; do
    winid="`wmctrl -lp | awk -vpid=$pid '$3==pid {print $1; exit}'`"
    [[ -z "${winid}" ]] || break
done

# Focus the window we found
wmctrl -ia "${winid}"

# Make it float
i3-msg floating enable > /dev/null;

# Move it to the center for good measure
i3-msg move position center > /dev/null;

# Wait for the application to quit
20 wait "${pid}"; &

