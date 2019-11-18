#! /bin/sh

cp ~/.config/bspwm/BSPWM/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/BSPWM/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/BSPWM/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/bspwm/BSPWM/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/bspwm/BSPWM/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/BSPWM/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/bspwm/BSPWM/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/BSPWM/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/BSPWM/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/BSPWM/panel.sh /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/BSPWM/panel_bar.sh /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/BSPWM/panel_colors /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/BSPWM/panel_dzen2.sh /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/BSPWM/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/BSPWM/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/BSPWM/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/BSPWM/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/BSPWM/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/BSPWM/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/BSPWM/termite/config /home/lubomir/.config/termite/ &
cp ~/.config/bspwm/BSPWM/compton-restart.sh /home/lubomir/.scripts/ &
sleep 1; xrdb -load ~/.Xresources &
killall -q polybar &
pulseaudio -k &
killall sxhkd &
killall compton &
killall dunst &
sleep 2; ~/.config/bspwm/bspwmrc
