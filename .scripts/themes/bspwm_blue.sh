#! /bin/sh

cp ~/.config/bspwm/Bspwm-Blue/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Blue/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Blue/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Blue/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Blue/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Blue/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Blue/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Blue/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Blue/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Blue/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Blue/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Blue/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Blue/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Blue/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Blue/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Blue/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/dark_sky.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &

bspc config border_width         2
bspc config window_gap           6

# bspc config automatic_scheme spiral
bspc config automatic_scheme alternate
bspc config initial_polarity second_child

bspc config split_ratio          0.50
bspc config gapless_monocle      true
bspc config single_monocle       false

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#5D7DFB"
bspc config normal_border_color             "#464646"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#5D7DFB"
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
