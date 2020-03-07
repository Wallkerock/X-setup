#!/bin/sh

if [ -z $(bspc desktop -l next) ]; then
    bspc config -d focused border_width 2
fi

cp ~/.config/bspwm/Bspwm-Abrus/monocle.sh ~/.config/bspwm/Bspwm-Abrus/monocle_layout.sh &
