#! /bin/bash
until [ 1 -eq 2 ]; do

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
#DIR="~/Pictures/backgrounds/bspwm-azul/"

# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
#PIC=$(ls $DIR/*.jpg | shuf -n1)

# Command to set Background Image
feh --randomize --bg-fill ~/Pictures/backgrounds/bspwm-azul/*

sleep 300s
done
