#!/bin/bash

net=`cat ~/.scripts/network/net`

if ping -q -c 2 -W 1 google.com > /dev/null 2>&1; then
 	echo "%{F#5DFF4C}online%{F-}"
 	if [ "$net" = "2" ]; then
		notify-send --urgency=normal "Network connection:" "Connected!"
		echo 0 > ~/.scripts/network/net
	fi
else
	echo "%{B#D01B3C} offline %{B-}"
	if [ "$net" = "0" ]; then
		notify-send --urgency=critical "Network connection:" "Disconnected!"
		echo 2 > ~/.scripts/network/net
	fi
fi

