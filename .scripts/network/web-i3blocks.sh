#!/bin/bash

net=`cat ~/.scripts/network/net`

if ping -q -c 2 -W 1 62.197.243.56 > /dev/null 2>&1; then
 	echo "online"
 	if [ "$net" = "2" ]; then
		notify-send --urgency=normal "Network connection:" "Connected!"
		echo 0 > ~/.scripts/network/net
	fi
else
	echo "offline"
	if [ "$net" = "0" ]; then
		notify-send --urgency=critical "Network connection:" "Disconnected!"
		echo 2 > ~/.scripts/network/net
	fi
fi
