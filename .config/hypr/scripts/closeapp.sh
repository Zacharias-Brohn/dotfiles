#!/bin/bash

if hyprctl activewindow | grep -q "kitty"; then
	hyprctl dispatch movetoworkspacesilent special:kitty
else
	hyprctl dispatch killactive
fi
