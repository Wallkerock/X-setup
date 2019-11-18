#!/bin/sh

#################
### VARIABLES ###
#################

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l); then
    updates_arch=`cat ~/.scripts/updates/pacman`
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=`cat ~/.scripts/updates/aur`
fi

updates=$(("$updates_arch" + "$updates_aur"))

pacman=`cat ~/.scripts/updates/pacman`
AUR=`cat ~/.scripts/updates/aur`

UP=`checkupdates`
YAY=`yay -Qum`

echo $updates_arch > ~/.scripts/updates/pacman
echo $updates_aur > ~/.scripts/updates/aur

checkupdates > ~/.scripts/updates/pacman-text
yay -Qua> ~/.scripts/updates/aur-text

##########################################
### POLYBAR PART (interval 60 seconds) ###
##########################################

if [ "$updates" -gt 0 ]; then
    echo "ups: $updates"
else
    echo "ups: $updates"
fi

###########################
### NOTIFY PART (dunst) ###
###########################

# system (pacman) updates (start depends on value of variables $pacman and $AUR)

if [ "$updates_arch" -gt "$pacman" ]; then
	if [ "$updates_arch" = "1" ]; then
    	notify-send --urgency=normal "System update: $updates_arch" "$UP" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
	else
    	notify-send --urgency=normal "System updates: $updates_arch" "$UP" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
	fi
fi

# AUR updates

if [ "$updates_aur" -gt "$AUR" ]; then
	if [ "$updates_aur" = "1" ]; then
    	notify-send --urgency=normal "AUR update: $updates_aur" "$YAY" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
	else
    	notify-send --urgency=normal "AUR updates: $updates_aur" "$YAY" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
	fi
fi
