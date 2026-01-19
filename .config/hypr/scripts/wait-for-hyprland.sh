#!/bin/zsh

max_secs=90
interval=0.1
count=0

# while (( $(echo "$count < $max_secs" | bc) )); do
#     if pgrep -f "wayland-wm@hyprland" > /dev/null; then
#         exit 0
#     fi
#
#     sleep $interval
#     count=$(echo "$count + $interval" | bc)
# done
#
# echo "Timeout waiting for hyprland compositor" >&2
exit 0
