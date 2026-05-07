#!/usr/bin/env bash

DIR=/mnt/IronWolf/arch-packages/

main() {
	local input_qqe=$(yay -Qqe)
	local input_qqm=$(yay -Qqm)

	local sorted_input=$(sort <(echo "$input_qqe") <(echo "$input_qqm"))
	local uniq_input=$(uniq <(echo "$sorted_input"))

	mkdir $DIR &>/dev/null

	echo "$uniq_input" >$DIR/pkgs.txt
}

main "$@"
