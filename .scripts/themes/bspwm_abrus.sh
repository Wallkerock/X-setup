#! /bin/sh

cp ~/.config/bspwm/Bspwm-Abrus/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Abrus/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Abrus/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Abrus/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Abrus/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Abrus/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Abrus/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Abrus/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Abrus/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Abrus/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Abrus/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Abrus/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Abrus/picom.conf /home/lubomir/.config/ -b &
cp ~/.config/bspwm/Bspwm-Abrus/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Abrus/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Abrus/termite/config /home/lubomir/.config/termite/ &
cp ~/.config/bspwm/Bspwm-Abrus/compton-restart.sh /home/lubomir/.scripts/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-abrus/mini.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Abrus-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Abrus" &

bspc config border_width         3
bspc config window_gap           0

bspc config split_ratio          0.50
bspc config borderless_monocle   false
bspc config gapless_monocle      true
bspc config single_monocle       false

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#B82525"
bspc config normal_border_color             "#32363F"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#B82525"
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
