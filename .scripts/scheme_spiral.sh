#!/bin/sh

bspc config automatic_scheme spiral
bspc config initial_polarity first_child

bspc config split_ratio          0.618

notify-send --urgency=normal "scheme Spiral [ @ ]"
