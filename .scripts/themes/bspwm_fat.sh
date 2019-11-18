#! /bin/sh

cp ~/.config/bspwm/Bspwm-Fat/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Fat/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Fat/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/bspwm/Bspwm-Fat/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Fat/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Fat/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/bspwm/Bspwm-Fat/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Fat/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Fat/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Fat/polybar/launch.sh /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Fat/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Fat/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Fat/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Fat/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Fat/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Fat/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Fat/termite/config /home/lubomir/.config/termite/ &
sleep 1; xrdb ~/.Xresources &
killall -q polybar &
pulseaudio -k &
killall sxhkd &
killall compton &
killall dunst &
sleep 2; ~/.config/bspwm/bspwmrc
