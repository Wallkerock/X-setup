#! /bin/sh

updates_arch=`cat ~/.scripts/updates/pacman`
updates_aur=`cat ~/.scripts/updates/aur`

UP=`cat ~/.scripts/updates/pacman-text`
YAY=`cat ~/.scripts/updates/aur-text`

if [ "$updates_arch" ]; then
    if [ "$UP" = "0" ]; then
        notify-send --urgency=normal "System updates:  $updates_arch" "$UP"
    elif [ "$UP" = "1" ]; then
        notify-send --urgency=normal "System update:  $updates_arch" "$UP"
    else
        notify-send --urgency=normal "System updates:  $updates_arch" "$UP"
    fi
fi

if [ "$updates_aur" != "0" ]; then
    if [ "$YAY" = "0" ]; then
        notify-send --urgency=normal "AUR updates:  $updates_aur" "$YAY"
    elif [ "$UP" = "1" ]; then
        notify-send --urgency=normal "AUR update:  $updates_aur" "$YAY"
    else
        notify-send --urgency=normal "AUR updates:  $updates_aur" "$YAY"
    fi
fi

