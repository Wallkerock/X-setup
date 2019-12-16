#! /bin/sh

cp ~/.config/bspwm/Bspwm-Graphite/compton-bspwm.conf /home/lubomir/.config/ & pkill compton && compton -b --config ~/.config/compton-bspwm.conf
