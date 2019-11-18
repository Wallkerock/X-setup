#! /bin/sh

cp ~/.config/herbstluftwm/LightBug-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &
cp ~/.config/herbstluftwm/LightBug-theme/.gtkrc-2.0 /home/lubomir/ &
cp ~/.config/herbstluftwm/LightBug-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/LightBug-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/LightBug-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/LightBug-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/LightBug-theme/autostart ~/.config/herbstluftwm/ &
#cp ~/.config/herbstluftwm/LightBug-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/herbstluftwm/LightBug-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/LightBug-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/LightBug-theme/compton.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/LightBug-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/LightBug-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/LightBug-theme/.vimrc /home/lubomir/ &
#cp ~/.config/herbstluftwm/LightBug-theme/conky_green /home/lubomir/.conky/ &&
#cp ~/.config/herbstluftwm/LightBug-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
sleep 1; xrdb ~/.Xresources &
killall pulseaudio -k &
killall compton &
killall dunst &
killall -q polybar
#killall conky
