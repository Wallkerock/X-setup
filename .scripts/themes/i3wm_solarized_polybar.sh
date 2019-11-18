cp ~/.config/i3/Solarized-Polybar-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Solarized-Polybar-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Solarized-Polybar-theme/polybar/launch.sh ~/.config/polybar/ &&
cp ~/.config/i3/Solarized-Polybar-theme/polybar/config ~/.config/polybar/ &&
cp ~/.config/i3/Solarized-Polybar-theme/.Xresources ~/ &&
cp ~/.config/i3/Solarized-Polybar-theme/ROFI.rasi ~/.config/rofi/themes/ &&
cp ~/.config/i3/Solarized-Polybar-theme/compton.conf ~/.config/ &&
cp ~/.config/i3/Solarized-Polybar-theme/dunstrc ~/.config/dunst/ &&
cp ~/.config/i3/Solarized-Polybar-theme/conky_green ~/.conky/ &&
cp ~/.config/i3/Solarized-Polybar-theme/conky1.10_shortcuts_green ~/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
