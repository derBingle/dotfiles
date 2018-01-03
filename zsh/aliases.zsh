# Replace ls with exa
alias ls='exa --group-directories-first --ignore-glob=node_modules'
alias la='clear && ls -d .*'                 # Clear && list only dotfiles
alias ..='cd .. && clear && ls'              # Cd to the parent folder
alias t='tmux -f ~/.dotfiles/tmux/tmux.conf' # Launch tmux with the tmux.conf file in dotfiles
alias o="open"                               # Quicker `open`
alias rm=trash                               # Sends files to the trash rather than instant deletion
alias shut='sudo shutdown -h now'            # Shut down the computer... now
alias mess='fb-messenger-cli'                # Launch facebook messenger on command line
alias sym='ln -s'                            # Easier to remember symlink
alias cat='ccat'                             # Colored cat
alias size='du -hs'                          # Get size of file or directory.
alias cd.='cd ~/.dotfiles && clear && ls'    # Open the dotfiles directory.
alias reload!=". ~/.dotfiles/zsh/zshrc"      # Reload ZSH

# clear screen and ag list matching files
alias cagl="clear && ag -l"

# cd into whatever is the forefront Finder window
cd.f() { cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"; }

# vim aliases
alias temp='vim temp'                                 # Launch vim directly to a special temporary buffer (see .vimrc)
alias vimplug='vim -MR -c "PlugInstall nomod nolist"' # Launch vim directly to the vim-plug PlugInstall buffer

# javascript aliases
alias nis='npm install --save'                        # Quicker npm --save installs
alias nid='npm install --save-dev'                    # Quicker npm --save-dev installs
alias npr='npm run'                                   # Quicker npm run
alias deps="jq -r -c '.dependencies | keys[] ' ./package.json | column"      # Print a pretty list of node app dependencies
alias ddeps="jq -r -c '.devDependencies | keys[] ' ./package.json | column"      # Print a pretty list of node app dependencies

# context aliases
alias ctr='context'                                   # Compile ConTeXt file
alias ctp='context --purgeall'                        # Compile ConTeXt file + remove additional files
alias ctpc='context --purgeall --noconsole'           # Compile ConTeXt file + remove additional files + limit console output
alias cxfont='mtxrun --script fonts --list --all'     # List fonts in the ConTeXt database

# httpie aliases
alias https='http --default-scheme=https'     # httpie SSL alias
alias download='http --download'              # httpie download mode

# youtube-dl aliases
alias ytmo="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "
alias ytmu="youtube-dl -f 'bestaudio[ext=m4a]' "