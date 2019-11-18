#!/bin/bash

rm /home/lubomir/.config/minidlna/cache/files.db &
minidlnad -f /home/lubomir/.config/minidlna/minidlna.conf -P /home/lubomir/.config/minidlna/minidlna.pid &
paplay /usr/share/sounds/freedesktop/stereo/device-added.oga &
yad --notification --image="server" --command="" --text="Minidlna running" &
