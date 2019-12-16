#! /bin/sh

cp ~/.config/bspwm/Bspwm-Graphite/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Graphite/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Graphite/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Graphite/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Graphite/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Graphite/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Graphite/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Graphite/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Graphite/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Graphite/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Graphite/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Graphite/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Graphite/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Graphite/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Graphite/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Graphite/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-graphite/bspwm-logo.png &
#feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-graphite/minimalist.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Stylish-Light-Laptop" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Limon" &

bspc config border_width         3
bspc config window_gap           16

# bspc config automatic_scheme spiral
bspc config automatic_scheme alternate
bspc config initial_polarity second_child

bspc config split_ratio          0.50
bspc config borderless_monocle   false
bspc config gapless_monocle      true
bspc config single_monocle       false

bspc config focused_border_color            "#444444"
bspc config normal_border_color             "#D6D6D6"
bspc config presel_feedback_color           "#444444"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb -load ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall picom && sleep 1; picom &
killall dunst; notify-send "restart dunst" &
