#! /bin/sh

cp ~/.config/bspwm/Bspwm-Azul-Light/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Azul-Light/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Azul-Light/termite/config /home/lubomir/.config/termite/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-azul/salix.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Stylish-Light-Laptop-Azul" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Stylish" &

bspc config border_width         3
bspc config window_gap           20

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#2196F3"
#bspc config focused_border_color            "#FF4083"
bspc config normal_border_color             "#B5C5D1"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#2196F3"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall compton && sleep 1; compton &
killall dunst; notify-send "restart dunst" &

