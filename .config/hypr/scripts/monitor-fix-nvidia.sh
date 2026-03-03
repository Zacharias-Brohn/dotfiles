#!/bin/zsh

hyprctl keyword monitor "DP-1, disable"
sleep 2
hyprctl keyword monitor "DP-1, 2560x1440@144, 0x0, 1"
