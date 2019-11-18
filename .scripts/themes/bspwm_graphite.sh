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
cp ~/.config/bspwm/Bspwm-Graphite/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Graphite/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Graphite/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Graphite/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=Papirus/g' ~/.config/smplayer/smplayer.ini &

xfconf-query -c xsettings -p /Net/ThemeName -s "Stylish-Light-Laptop" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Limon" &

bspc config border_width         3
bspc config window_gap           26

bspc config focused_border_color            "#595959"
bspc config normal_border_color             "#D6D6D6"
bspc config presel_feedback_color           "#595959"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb -load ~/.Xresources &
feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-logo.png &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall compton && sleep 1; compton &
killall dunst; notify-send "restart dunst" &
