# Clear
bindkey -s ',c' '^l'

# Clear + List
bindkey -s ',l' 'clear && ls\n'

# Source ~/.dotfiles/zsh/zshrc
bindkey -s ',rl' 'reload!\n'

# Up and down arrows scroll through substring-matching command history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
