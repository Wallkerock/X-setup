cp ~/.config/i3/Solarized-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/i3/Solarized-theme/config ~/.config/i3/ &&
cp ~/.config/i3/Solarized-theme/.i3status.conf ~/ &&
#cp ~/.config/i3/Solarized-theme/status.toml ~/.config/i3/ &&
cp ~/.config/i3/Solarized-theme/.Xresources ~/ &&
cp ~/.config/i3/Solarized-theme/ROFI.rasi ~/.config/rofi/themes/ &&
cp ~/.config/i3/Solarized-theme/compton.conf ~/.config/ &&
cp ~/.config/i3/Solarized-theme/dunstrc ~/.config/dunst/ &&
cp ~/.config/i3/Solarized-theme/conky_green ~/.conky/ &&
cp ~/.config/i3/Solarized-theme/conky1.10_shortcuts_green ~/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
