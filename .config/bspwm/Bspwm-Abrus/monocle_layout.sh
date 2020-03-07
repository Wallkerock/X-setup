#!/bin/sh

if [ -z $(bspc desktop -l next) ]; then
    bspc config -d focused border_width 6
fi

cp ~/.config/bspwm/Bspwm-Abrus/unmonocle.sh ~/.config/bspwm/Bspwm-Abrus/monocle_layout.sh &
