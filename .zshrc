(cat ~/.cache/wallust/sequences)

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach-session -t default || tmux new-session -s default
# fi

if [ -d ~/.config/zshrc/custom ]; then
	for f in ~/.config/zshrc/custom/*; do source $f; done
else
	for f in ~/.config/zshrc/*; do source $f; done
fi

eval "$(zoxide init --cmd cd zsh)"
