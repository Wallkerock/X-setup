#! /bin/sh

killall -q polybar &
#killall sxhkd &
#pulseaudio -k &
killall picom &
sleep 1
cp ~/.config/i3/Matcha-Polybar-Top-theme/polybar/config /home/lubomir/.config/polybar &
cp ~/.config/i3/Matcha-Polybar-Top-theme/polybar/launch.sh /home/lubomir/.config/polybar &
sleep 1
cp ~/.config/i3/Matcha-Polybar-Top-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/i3/Matcha-Polybar-Top-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/config ~/.config/i3/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Matcha-Polybar-Top-theme/termite/config /home/lubomir/.config/termite/ &

#feh --bg-fill /home/lubomir/Pictures/backgrounds/blackcat.jpg &
feh --bg-fill /home/lubomir/Pictures/backgrounds/i3wm-matcha.png &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Matcha-dark-sea" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Full-Dark-Teal" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
