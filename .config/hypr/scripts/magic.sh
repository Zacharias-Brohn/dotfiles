#!/bin/zsh

for i in {1..1350}; do
    ydotool mousemove --absolute -x 4320 -y 1120
    sleep 3
    ydotool click 0xC0
done

pkill java
