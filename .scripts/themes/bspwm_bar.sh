#! /bin/sh

cp ~/.config/bspwm/Bspwm-Bar/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Bar/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/bspwm/Bspwm-Bar/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Bar/panel /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Bar/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Bar/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Bar/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Bar/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Bar/dunstrc /home/lubomir/.config/dunst/ &
xrdb ~/.Xresources &
killall -q polybar &
killall sxhkd &
killall compton &
~/.config/bspwm/bspwmrc
#sleep 2; compton -b --config ~/.config/compton-bspwm.conf
