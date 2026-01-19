#!/bin/zsh

export XDG_RUNTIME_DIR="/run/user/1000"

num_workspaces=10

random_images=()

populate_random_images() {
    local images=($(find /home/inorishio/Pictures/Backgrounds/ -type f | shuf -n $num_workspaces))
    random_images=("${images[@]}")
}

handle() {
    case $1 in
        "workspace>>1") swww img --transition-type none "${random_images[1]}" ;;
        wal -f "/home/inorishio/.cache/wal/schemes/${random_images[1]}.json" ;;
        "workspace>>2") swww img --transition-type none "${random_images[2]}" ;;
        "workspace>>3") swww img --transition-type none "${random_images[3]}" ;;
        "workspace>>4") swww img --transition-type none "${random_images[4]}" ;;
        "workspace>>5") swww img --transition-type none "${random_images[5]}" ;;
        "workspace>>6") swww img --transition-type none "${random_images[6]}" ;;
        "workspace>>7") swww img --transition-type none "${random_images[7]}" ;;
        "workspace>>8") swww img --transition-type none "${random_images[8]}" ;;
        "workspace>>9") swww img --transition-type none "${random_images[9]}" ;;
        "workspace>>10") swww img --transition-type none "${random_images[10]}" ;;
    esac
}

populate_random_images

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
