#! /bin/sh

cp ~/.config/bspwm/Bspwm-Dark/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Dark/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Dark/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Dark/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Dark/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Dark/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Dark/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Dark/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Dark/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Dark/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Dark/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Dark/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Dark/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Dark/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Dark/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Dark/termite/config /home/lubomir/.config/termite/ &
cp ~/.config/bspwm/Bspwm-Dark/compton-restart.sh /home/lubomir/.scripts/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-dark/tapeta2.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Materia-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Grey-Numix" &

bspc config border_width         2
bspc config window_gap           10

bspc config gapless_monocle true
bspc config single_monocle false

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#EAEAEA"
bspc config normal_border_color             "#525252"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#CCCCCC"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall picom && sleep 1; picom -b &
killall dunst; notify-send "restart dunst" &
