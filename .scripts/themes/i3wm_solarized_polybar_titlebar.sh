#! /bin/sh

killall -q polybar &
killall picom &

cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/polybar/config /home/lubomir/.config/polybar &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/polybar/launch.sh /home/lubomir/.config/polybar &
sleep 1
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/config ~/.config/i3/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Solarized-Polybar-Titlebar-theme/termite/config /home/lubomir/.config/termite/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/wm-paper.png &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Breeze-Solarized-Light" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Materia-Manjaro" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
