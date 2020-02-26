#!/bin/sh

if [ -z $(bspc desktop -l next) ]; then
    bspc config -d focused border_width 3
fi

cp ~/.config/bspwm/Bspwm-Dark-Orange/monocle.sh ~/.config/bspwm/Bspwm-Dark-Orange/monocle_layout.sh &
