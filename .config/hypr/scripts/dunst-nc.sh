#!/bin/bash
# show-notifications.sh: display Dunst history in Rofi

# Fetch all notifications as JSON
history=$(dunstctl history)

# Parse and format: use jq to extract summary and body (as an example)
items=$(echo "$history" \
  | jq -r '.data[][] | "\(.summary.data) – \(.body.data)"')

# Show with Rofi (fallback: you could use dmenu similarly)
echo "$items" | rofi -dmenu -i -p "Notifications"
