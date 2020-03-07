#! /bin/sh

cp ~/.config/bspwm/Bspwm-LightningBug/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-LightningBug/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-LightningBug/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-LightningBug/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-LightningBug/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-LightningBug/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-LightningBug/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-LightningBug/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-LightningBug/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-LightningBug/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-LightningBug/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-LightningBug/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-LightningBug/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-LightningBug/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-LightningBug/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-LightningBug/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/tapeta3.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "LightningBug-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Full-Dark-Yellow" &
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto Regular 10" &

bspc config border_width         3
bspc config window_gap           14

bspc config gapless_monocle true
bspc config single_monocle false

#bspc config focused_sticky_border_color     "#FFB600"
bspc config focused_border_color            "#B8860B"
bspc config normal_border_color             "#464646"
#bspc config urgent_border_color             "#red"
#bspc config active_border_color             "#magenta"
bspc config presel_feedback_color           "#B8860B"
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
