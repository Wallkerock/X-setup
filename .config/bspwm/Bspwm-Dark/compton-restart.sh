#! /bin/sh

cp ~/.config/bspwm/Bspwm-Dark/compton-bspwm.conf /home/lubomir/.config/ & pkill compton && compton -b --config ~/.config/compton-bspwm.conf
