##
# My zsh customization. I have yet to unlock its many mysteries. I'm still
# figuring this out, so it's pretty rough at the moment.

# Make sure Tmux is always running when using terminal
if [ "$TMUX" = "" ]; then
    tmux attach -t base || tmux new -s base
fi

# Load up your alias file
source $HOME/.aliases

##
# A few recommended settings from
# "https://www.codementor.io/linux/tutorial/configure-linux-toolset-zsh-tmux-vim"
# and
# "http://www.drbunsen.org/the-text-triumvirate/"

# Sanity check for executing "rm *"
setopt RM_STAR_WAIT

# Enables Bash-style comments on the command line #yesplease
setopt interactivecomments

# Use zsh's spelling corrector.
setopt CORRECT

# Automatically cd if no command found and input is a directory name
setopt AUTO_CD

## 
# Give me those sweet sweet Vi bindings 
export EDITOR="vim"
bindkey -v

export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Use 'jf' to exit insert mode.
bindkey -M viins 'jf' vi-cmd-mode
bindkey -M viins 'jk' vi-cmd-mode

# Set key time out to something low-ish, but high enough that 'jf' will work.
export KEYTIMEOUT=10


# Switch back to vim without having to type fg<enter>
# 'http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/'
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0  ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

##
# Additions to path
export PATH=/home/$USER/.mongo-install/mongodb-linux-x86_64-3.0.6/bin:$PATH
export PATH=/home/$USER/.elmfiles/Elm-Platform/0.15.1/.cabal-sandbox/bin:/opt/ghc/7.8.4/bin:$PATH
