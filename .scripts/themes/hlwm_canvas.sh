#! /bin/sh

killall -q polybar &
cp ~/.config/herbstluftwm/Canvas-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Canvas-theme/polybar/config /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/herbstluftwm/Canvas-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/Canvas-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/Canvas-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/Canvas-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/Canvas-theme/autostart ~/.config/herbstluftwm/ &
#cp ~/.config/herbstluftwm/Canvas-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Canvas-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/Canvas-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/Canvas-theme/picom.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/Canvas-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/Canvas-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/Canvas-theme/.vimrc /home/lubomir/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/herbstluftwm-canvas/dark_sky.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Canvas-dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Newaita-dark" &

# theme

# herbstclient pad 0 24 0 0

# herbstclient attr theme.tiling.reset 1
# herbstclient attr theme.floating.reset 1
# herbstclient set frame_border_active_color '#2B2B2B'
# herbstclient set frame_border_normal_color '#1B1B1B'
# herbstclient set frame_bg_normal_color '#7D7D7D'
# herbstclient set frame_bg_active_color '#3D60E5'
# herbstclient set frame_active_opacity '65'
# herbstclient set frame_normal_opacity '20'
# herbstclient set frame_border_width 1
# herbstclient set always_show_frame 1
# herbstclient set frame_bg_transparent 1
# herbstclient set frame_transparent_width 2
# herbstclient set frame_gap 6
# herbstclient set focus_follows_mouse 0

# herbstclient attr theme.active.color '#5D7DFB'
# herbstclient attr theme.normal.color '#454545'
# herbstclient attr theme.urgent.color orange
# herbstclient attr theme.inner_width 1
# herbstclient attr theme.inner_color '#272727'
# herbstclient attr theme.border_width 3
# herbstclient attr theme.floating.border_width 4
# herbstclient attr theme.floating.outer_width 1
# herbstclient attr theme.floating.outer_color black
# herbstclient attr theme.active.inner_color '#454545'
# herbstclient attr theme.active.outer_color '#454545'
# herbstclient attr theme.background_color '#141414'

# herbstclient set window_gap 0
# herbstclient set frame_padding 0
# herbstclient set smart_window_surroundings 0
# herbstclient set smart_frame_surroundings 1
# herbstclient set mouse_recenter_gap 0

#sleep 1; xrdb ~/.Xresources &
#killall picom && sleep 1; picom &
#killall dunst; notify-send "restart dunst" &
sleep 1; sh ~/.config/herbstluftwm/Canvas-theme/autostart &
#killall conky
