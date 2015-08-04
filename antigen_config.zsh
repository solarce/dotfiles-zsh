# Stuff I use antigen to activate

# oh-my-zsh framework
antigen use oh-my-zsh

# custom version of the nanofish theme
antigen theme solarce/nanofish nanofish

# autoenv plugin
antigen-bundle horosgrisa/autoenv

# fishshell.com like auto-suggestions, needs
# to come before zsh-syntax-highlighting
antigen bundle tarruda/zsh-autosuggestions

# fishshell.com like inline syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# fishshell.com like history search
antigen bundle zsh-users/zsh-history-substring-search
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
