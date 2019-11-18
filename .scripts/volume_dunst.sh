#!/bin/bash
if [ "$1" == "low" ]
then
 amixer -q set Master 5%- unmute
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f7 | sed 's/\(\[\|\]\)//g')
elif [ "$1" == "high" ]
then
 amixer -q set Master 5%+ unmute
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f7 | sed 's/\(\[\|\]\)//g')
elif [ "$1" == "mute" ]
then
 amixer -q set Master toggle
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f7 | sed 's/\(\[\|\]\)//g')
else
 echo "Hlasitosť [low | high | mute]\n"
fi

ID=$(cat ~/.config/dunst/.dunst_volume)
if [ $ID -gt "0" ]
then
 notify-send $ID "Hlasitosť: $TEXT" >~/.config/dunst/.dunst_volume
else
 notify-send $ID "Hlasitosť: $TEXT" >~/.config/dunst/.dunst_volume
fi