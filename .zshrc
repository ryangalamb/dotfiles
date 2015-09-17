##
# My zsh customization. I have yet to unlock its many mysteries. I'm still
# figuring this out, so it's pretty rough at the moment.


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

# Use 'jf' to exit insert mode.
bindkey -M viins 'jf' vi-cmd-mode

# Set key time out to something low-ish, but high enough that 'jf' will work.
export KEYTIMEOUT=10

# TODO: Move your other essential bindings into here



##
# Additions to path
export PATH=/home/$USER/.elmfiles/Elm-Platform/0.15.1/.cabal-sandbox/bin:/opt/ghc/7.8.4/bin:$PATH
