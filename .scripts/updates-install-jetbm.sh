#!/bin/bash

# urxvt -e zsh -c 'echo -e "\e[1;33mSystem ready to update. Enter to run PACMAN: \e[1;30m/Ctrl+c Exit/\e[0m"; read; \
# sudo pacman -Syu; \
# echo -e "\n\e[1;33mDone - press enter to run updates from AUR: \e[1;30m/Ctrl+c Exit/\e[0m"; read; \
# yay -Syu --aur; \
# echo -e "\n\e[1;33mDone - press enter to exit:\e[0m"; read'

bspc rule -a \* -o state=floating && urxvt -geometry 150x44+356+120 -e bash -c "echo -e '\e[1;33mSystem ready to update. Enter to run PACMAN: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
sudo pacman -Syu; \
echo -e '\n\e[1;33mDone - press enter to run updates from AUR: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
yay -Syu --aur; \
echo -e '\n\e[1;33mDone - press enter to exit:\e[0m'; read" &

# xfce4-terminal -x bash -c "echo -e '\e[1;33mSystem ready to update. Enter to run PACMAN: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
# sudo pacman -Syu; \
# echo -e '\n\e[1;33mDone - press enter to run updates from AUR: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
# yay -Syu --aur; \
# echo -e '\n\e[1;33mDone - press enter to exit:\e[0m'; read"

# gnome-terminal -x bash -c "echo -e '\e[1;33mSystem ready to update. Enter to run PACMAN: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
# sudo pacman -Syu; \
# echo -e '\n\e[1;33mDone - press enter to run updates from AUR: \e[1;30m/Ctrl+c Exit/\e[0m'; read; \
# yay -Syu --aur; \
# echo -e '\n\e[1;33mDone - press enter to exit:\e[0m'; read"
