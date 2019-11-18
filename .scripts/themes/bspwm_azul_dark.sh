#! /bin/sh

cp ~/.config/bspwm/Bspwm-Azul-Dark/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/polybar/launch.sh /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Azul-Dark/termite/config /home/lubomir/.config/termite/ &
sleep 1; xrdb -load ~/.Xresources &
killall -q polybar &
pulseaudio -k &
killall sxhkd &
killall compton &
killall dunst &
sleep 2; ~/.config/bspwm/bspwmrc
