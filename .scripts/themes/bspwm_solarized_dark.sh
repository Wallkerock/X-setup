#! /bin/sh

cp ~/.config/bspwm/Bspwm-Solarized-Dark/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Solarized-Dark/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Solarized-Dark/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Solarized-Dark/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/sky-solarized.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "NumixSolarizedDarkCyan" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Materia-Manjaro" &

bspc config border_width         2
bspc config window_gap           10

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#2AA198"
bspc config normal_border_color             "#1D414A"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#2AA198"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         24
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall compton && sleep 1; compton &
killall dunst; notify-send "restart dunst" &
