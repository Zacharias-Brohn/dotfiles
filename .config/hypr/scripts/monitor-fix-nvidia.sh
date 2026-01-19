#!/bin/zsh

hyprctl keyword monitor "DP-1, disable"
sleep 2
hyprctl keyword monitor "DP-1, 3840x2160@60, -2560x0, 1.5"
