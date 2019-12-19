#! /bin/bash

### For other terminal emulators ###

# urxvt -e zsh -c
# xfce4-terminal -x bash -c
# gnome-terminal -x bash -c

### URXVT setup ###

urxvt -name float -e bash -c "echo -e '\e[1;33mSystem ready to update. Enter to run PACMAN: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
sudo pacman -Syu; \
echo -e '\n\e[1;33mDone - press enter to run updates from AUR: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
yay -Syu --aur; \
echo -e '\n\e[1;33mDone - press enter to exit:\e[0m'; read; sh ~/.scripts/updates-pacman.sh" &
# pid="$!"

# # Wait for the window to open and grab its window ID
# winid=''
# while : ; do
#     winid="`wmctrl -lp | awk -vpid=$pid '$3==pid {print $1; exit}'`"
#     [[ -z "${winid}" ]] || break
# done

# # Focus the window we found
# wmctrl -ia "${winid}"

# # Make it float
# i3-msg floating enable > /dev/null;

# # Move it to the center for good measure
# i3-msg move position center > /dev/null;

# # Wait for the application to quit
# wait "${pid}"; &

