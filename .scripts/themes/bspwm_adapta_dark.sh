#! /bin/sh

cp ~/.config/bspwm/Bspwm-Adapta-Dark/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Adapta-Dark/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Adapta-Dark/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/compton.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Adapta-Dark/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-adapta/adapta4.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Adapta-Nokto-Eta" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Adapta2" &

bspc config border_width         2
bspc config window_gap           10

bspc config gapless_monocle true
bspc config single_monocle false

bspc config focused_border_color            "#00BCD4"
bspc config normal_border_color             "#2B424D"

bspc config presel_feedback_color           "#00BCD4"
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
