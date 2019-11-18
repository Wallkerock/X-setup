#! /bin/sh

cp ~/.config/bspwm/Bspwm-Solarized-Light/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Solarized-Light/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Solarized-Light/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Solarized-Light/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-solarized/bspwm-solarized.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Breeze-Solarized-Light" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Numix" &

bspc config border_width         3
bspc config window_gap           20

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#2AA198"
bspc config normal_border_color             "#CCC5B0"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#2AA198"
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

