fpath=($HOME/.zsh-completions $fpath)

autoload -Uz compinit promptinit
compinit
promptinit

# allow bash-style comments on command-line
setopt interactivecomments

# TODO: decide what prompt you want
prompt redhat

## KEYBINDINGS
bindkey -v

# Mash j and k together to enter command mode
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd '^L' vi-repeat-find

# [untested] make backspace behave more like vim instead of default vi
bindkey "^?" backward-delete-char

export KEYTIMEOUT=10

## COMPLETION
# automatically find new executables in the $PATH
zstyle ':completion:*' rehash true

# start: https://web.archive.org/web/20190411104837/http://www.linux-mag.com/id/1106/
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
# end: https://web.archive.org/web/20190411104837/http://www.linux-mag.com/id/1106/

# show current auto selection
#zstyle ':completion:*' menu yes select

## HISTORY
HISTFILE="$HOME"/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000
setopt hist_expire_dups_first
setopt hist_ignore_space

## ENVIRONMENT VARIABLES
# TODO: put these in zprofile
export EDITOR="nvim"

# TODO: this should probably go before everything else
if [[ -f ~/.aliases ]];then
  source $HOME/.aliases
fi

if [[ -f ~/.shell_funcs ]];then
  source $HOME/.shell_funcs
fi

if [[ -f ~/.env_vars ]];then
  source $HOME/.env_vars
fi
