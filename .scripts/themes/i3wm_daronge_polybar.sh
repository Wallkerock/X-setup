#! /bin/sh

killall -q polybar &
#killall sxhkd &
#pulseaudio -k &
killall picom &

cp ~/.config/i3/Daronge-theme/polybar/config /home/lubomir/.config/polybar &
cp ~/.config/i3/Daronge-theme/polybar/launch.sh /home/lubomir/.config/polybar &
sleep 1
cp ~/.config/i3/Daronge-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Daronge-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/i3/Daronge-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Daronge-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Daronge-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Daronge-theme/config ~/.config/i3/ &
cp ~/.config/i3/Daronge-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Daronge-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Daronge-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Daronge-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/i3/Daronge-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Daronge-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Daronge-theme/termite/config /home/lubomir/.config/termite/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-dark-orange/sun.jpg &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Materia-Dark-Orange" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-5" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
