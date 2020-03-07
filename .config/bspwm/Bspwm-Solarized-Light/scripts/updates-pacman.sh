#!/bin/sh

#################
### VARIABLES ###
#################

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l); then
    updates_arch=`cat ~/.scripts/updates/pacman`
fi

pacman=`cat ~/.scripts/updates/pacman`

UP=`checkupdates`

echo $updates_arch > ~/.scripts/updates/pacman

checkupdates > ~/.scripts/updates/pacman-text

#########################################################
### POLYBAR PART (interval - no less than 30 seconds) ###
#########################################################

if [ "$updates_arch" = 0 ]; then
    echo ""
fi

if [ "$updates_arch" = 1 ]; then
    echo %{F#15FF00}"up: $updates_arch"%{F-}
else
    echo %{F#15FF00}"ups: $updates_arch"%{F-}
fi

###########################
### NOTIFY PART (dunst) ###
###########################

# system (pacman) updates (start depends on value of variables $pacman)

if [ "$updates_arch" -gt "$pacman" ]; then
    if [ "$updates_arch" = "1" ]; then
        notify-send --urgency=normal "System update: $updates_arch" "$UP" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
    else
        notify-send --urgency=normal "System updates: $updates_arch" "$UP" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
    fi
fi

