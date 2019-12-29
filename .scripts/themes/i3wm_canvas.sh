#! /bin/sh

killall -q polybar &
#killall sxhkd &
#pulseaudio -k &
killall picom &

cp ~/.config/i3/Canvas-theme/status.py /home/lubomir/.config/i3/ &
cp ~/.config/i3/Canvas-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Canvas-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/i3/Canvas-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Canvas-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Canvas-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Canvas-theme/config ~/.config/i3/ &
cp ~/.config/i3/Canvas-theme/.i3status.conf /home/lubomir/ &
cp ~/.config/i3/Canvas-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Canvas-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Canvas-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Canvas-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/i3/Canvas-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Canvas-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Canvas-theme/termite/config /home/lubomir/.config/termite/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/dark_sky.jpg &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
