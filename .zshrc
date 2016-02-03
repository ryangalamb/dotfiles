# Fire up the autocompleter
autoload -U compinit
compinit

source $HOME/.aliases

# Make completion style prettier
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# enable autocorrection of commands typed
# (I don't like this right now. I do weird stuff that gives false positives)
#setopt correctall

# Enables Bash-style comments on command line
setopt interactivecomments

setopt AUTO_CD
setopt RM_STAR_WAIT

export EDITOR="/usr/bin/nvim"
bindkey -v

bindkey -M viins 'jf' vi-cmd-mode
# Mash j and k together to enter command mode
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode

# TODO: Look into lowering this now
export KEYTIMEOUT=20

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
