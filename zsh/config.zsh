export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true
export DISABLE_AUTO_TITLE=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE="~/Library/Application Support/zsh/command-history"
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE       # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS    # allow functions to have local options
setopt LOCAL_TRAPS      # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY    # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# don't expand aliases *before* completion has finished (like: git comm-[tab])
setopt complete_aliases
setopt cdablevars
