#! /bin/sh

cp ~/.config/bspwm/Bspwm-Dark-Cosmos/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Dark-Cosmos/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/picom.conf /home/lubomir/.config/ -b &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/termite/config /home/lubomir/.config/termite/ &
cp ~/.config/bspwm/Bspwm-Dark-Cosmos/compton-restart.sh /home/lubomir/.scripts/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-dark-orange/wall839.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "oomox-materia-dark-cosmos" &
#xfconf-query -c xsettings -p /Net/IconThemeName -s "oomox-materia-dark-cosmos" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Full-Dark-Red" &
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto Regular 10" &

bspc config border_width         3
bspc config window_gap           0

bspc config split_ratio          0.50
bspc config borderless_monocle   false
bspc config gapless_monocle      true
bspc config single_monocle       false

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#C9D4BA"
bspc config normal_border_color             "#2F2723"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#C9D4BA"
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
