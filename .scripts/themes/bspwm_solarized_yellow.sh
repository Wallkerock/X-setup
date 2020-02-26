#! /bin/sh

cp ~/.config/bspwm/Bspwm-Solarized-Yellow/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Solarized-Yellow/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Solarized-Yellow/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/wm-paper.png &

xfconf-query -c xsettings -p /Net/ThemeName -s "NumixSolarizedLightYellow" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Light-Yellow" &

bspc config border_width         3
bspc config window_gap           14

bspc config automatic_scheme alternate
bspc config initial_polarity second_child

#bspc config automatic_scheme spiral
#bspc config initial_polarity first_child

bspc config split_ratio 0.50
bspc config gapless_monocle true
bspc config single_monocle false

bspc config focused_sticky_border_color     "#FF004E"
bspc config focused_border_color            "#B58900"
#bspc config normal_border_color             "#DFD6BB"
bspc config normal_border_color             "#D5CBAF"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#B58900"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall picom && sleep 1; picom &
killall dunst; notify-send "restart dunst" &

