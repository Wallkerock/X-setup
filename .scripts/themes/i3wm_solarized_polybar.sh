#! /bin.sh

killall -q polybar &
killall picom &

cp ~/.config/i3/Solarized-Polybar-theme/polybar/launch.sh ~/.config/polybar/ &
cp ~/.config/i3/Solarized-Polybar-theme/polybar/config ~/.config/polybar/ &
sleep 1
cp ~/.config/i3/Solarized-Polybar-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Solarized-Polybar-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/i3/Solarized-Polybar-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Solarized-Polybar-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Solarized-Polybar-theme/config ~/.config/i3/ &
cp ~/.config/i3/Solarized-Polybar-theme/.Xresources ~/ &
cp ~/.config/i3/Solarized-Polybar-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Solarized-Polybar-theme/ROFI.rasi ~/.config/rofi/themes/ &
cp ~/.config/i3/Solarized-Polybar-theme/picom.conf ~/.config/ &
cp ~/.config/i3/Solarized-Polybar-theme/dunstrc ~/.config/dunst/ &
cp ~/.config/i3/Solarized-Polybar-theme/zathurarc ~/.config/zathura/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/dark_sky.jpg &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Breeze-Solarized-Light" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Materia-Manjaro" &

sleep 1; xrdb ~/.Xresources &
killall dunst; notify-send "restart dunst" &
