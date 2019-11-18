cp ~/.config/herbstluftwm/Canvas-theme/settings.ini /home/lubomir/.config/gtk-3.0/ &&
cp ~/.config/herbstluftwm/Canvas-theme/.gtkrc-2.0 /home/lubomir/ &&
cp ~/.config/herbstluftwm/Canvas-theme/autostart ~/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/Canvas-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &&
cp ~/.config/herbstluftwm/Canvas-theme/polybar/config /home/lubomir/.config/polybar/ &&
cp ~/.config/herbstluftwm/Canvas-theme/.Xresources /home/lubomir/ &&
cp ~/.config/herbstluftwm/Canvas-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &&
cp ~/.config/herbstluftwm/Canvas-theme/compton-hw.conf /home/lubomir/.config/ &&
cp ~/.config/herbstluftwm/Canvas-theme/dunstrc /home/lubomir/.config/dunst/ &&
cp ~/.config/herbstluftwm/Canvas-theme/zathurarc /home/lubomir/.config/zathura/ &&
#cp ~/.config/herbstluftwm/Canvas-theme/conky_green /home/lubomir/.conky/ &&
#cp ~/.config/herbstluftwm/Canvas-theme/conky1.10_shortcuts_green /home/lubomir/.conky/ &&
xrdb ~/.Xresources &&
killall -q polybar
#killall conky
