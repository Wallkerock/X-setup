#!/bin/sh

bspc config automatic_scheme alternate
bspc config initial_polarity second_child

bspc config split_ratio          0.50

notify-send --urgency=normal "scheme Alternate [ # ]"
