#!/bin/bash

if [[ `checkupdates | wc -l` > 0 ]]; then
    urxvt --geometry=500x300 --exec="sudo pacman -Syu" &
fi

exit 0
