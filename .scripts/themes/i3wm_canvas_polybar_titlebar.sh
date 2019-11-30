#! /bin/sh

killall -q polybar &
#killall sxhkd &
#pulseaudio -k &
killall picom &

cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/polybar/config /home/lubomir/.config/polybar &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/polybar/launch.sh /home/lubomir/.config/polybar &
sleep 1
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/config ~/.config/i3/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/compton.conf /home/lubomir/.config/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Canvas-Polybar-Titlebar-theme/termite/config /home/lubomir/.config/termite/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/dark_sky.jpg &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
