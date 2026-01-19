(cat ~/.cache/wallust/sequences)
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach-session -t default || tmux new-session -s default
# fi

if [ -d ~/.config/zshrc/custom ] ;then
    for f in ~/.config/zshrc/custom/*; do source $f; done
else
    for f in ~/.config/zshrc/*; do source $f; done
fi
# Created by `pipx` on 2024-10-06 12:51:05
export PATH="$PATH:/home/zach/.local/bin"

eval "$(zoxide init --cmd cd zsh)"

# bun completions
[ -s "/home/zach/.bun/_bun" ] && source "/home/zach/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export MANPATH=$HOME/tools/ripgrep/doc/man:$MANPATH
export FPATH=$HOME/tools/ripgrep/complete:$FPATH

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/zach/.config/.dart-cli-completion/zsh-config.zsh ]] && . /home/zach/.config/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
