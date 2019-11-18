#! /bin/sh

cp ~/.config/bspwm/Bspwm-Canvas/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Canvas/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Canvas/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/bspwm/Bspwm-Canvas/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Canvas/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Canvas/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/bspwm/Bspwm-Canvas/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Blue/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Canvas/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Canvas/polybar/launch.sh /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Canvas/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Canvas/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Canvas/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Canvas/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Canvas/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Canvas/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Canvas/termite/config /home/lubomir/.config/termite/ &
sleep 1; xrdb -load ~/.Xresources &
killall -q polybar &
pulseaudio -k &
killall sxhkd &
killall compton &
killall dunst &
sleep 2; ~/.config/bspwm/bspwmrc
