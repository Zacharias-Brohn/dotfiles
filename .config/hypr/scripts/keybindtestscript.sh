#!/bin/zsh

if pgrep testscript.sh > /dev/null; then
    pkill testscript.sh
else
    ~/.config/hypr/scripts/testscript.sh &
fi
