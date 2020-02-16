#! /bin/sh

killall -q polybar &
cp ~/.config/herbstluftwm/LightBug-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/polybar/config /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/herbstluftwm/LightBug-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/LightBug-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/LightBug-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/LightBug-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/LightBug-theme/autostart ~/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/LightBug-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/LightBug-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/LightBug-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/LightBug-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/LightBug-theme/.vimrc /home/lubomir/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/hlwm-lightbug/openbox-lightbug.png &

xfconf-query -c xsettings -p /Net/ThemeName -s "LightningBug-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Full-Dark-Yellow" &

# sleep 1; xrdb ~/.Xresources &
# killall picom && sleep 1; picom &
# killall dunst; notify-send "restart dunst" &
sleep 1; sh ~/.config/herbstluftwm/LightBug-theme/autostart &
#killall conky
