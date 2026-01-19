#!/bin/zsh

last_value=""

while true; do
    volume=$( wpctl get-volume @DEFAULT_AUDIO_SINK@ )

    percent=$( echo "$volume" | awk '{printf "%d%%", $2 * 100}' )

    if [ "$percent" != "$last_value" ]; then
        echo "$percent" | tr -d '\n' | jq -Rs -c '{text: ., alt: "volume"}'
        last_value=$percent
    fi
done
