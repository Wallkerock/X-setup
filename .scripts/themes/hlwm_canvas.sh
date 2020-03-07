#! /bin/sh

killall -q polybar &
cp ~/.config/herbstluftwm/Canvas-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Canvas-theme/polybar/config /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/herbstluftwm/Canvas-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/Canvas-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/Canvas-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/Canvas-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/Canvas-theme/autostart ~/.config/herbstluftwm/ &
#cp ~/.config/herbstluftwm/Canvas-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Canvas-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/Canvas-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/Canvas-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/Canvas-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/Canvas-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/Canvas-theme/.vimrc /home/lubomir/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/herbstluftwm-canvas/dark_sky.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto Regular 10" &

#sleep 1; xrdb ~/.Xresources &
#killall picom && sleep 1; picom &
#killall dunst; notify-send "restart dunst" &
sleep 1; sh ~/.config/herbstluftwm/Canvas-theme/autostart &
#killall conky
