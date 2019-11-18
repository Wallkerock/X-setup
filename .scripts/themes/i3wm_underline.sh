#! /bin/sh

cp ~/.config/i3/Underline-theme/polybar/config /home/lubomir/.config/polybar &
cp ~/.config/i3/Underline-theme/polybar/launch.sh /home/lubomir/.config/polybar &
sleep 1
cp ~/.config/i3/Underline-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/i3/Underline-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/i3/Underline-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/i3/Underline-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Underline-theme/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/i3/Underline-theme/config ~/.config/i3/ &
cp ~/.config/i3/Underline-theme/.Xresources /home/lubomir/ &
cp ~/.config/i3/Underline-theme/.vimrc /home/lubomir/ &
cp ~/.config/i3/Underline-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/i3/Underline-theme/compton.conf /home/lubomir/.config/ &
cp ~/.config/i3/Underline-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/i3/Underline-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/i3/Underline-theme/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &

sleep 1; xrdb ~/.Xresources &
killall -q polybar &
#pulseaudio -k &
killall compton &
killall dunst; notify-send "restart dunst" &
