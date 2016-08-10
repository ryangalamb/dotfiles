# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode nvm)

# User configuration

export PATH="$HOME/.nvm/versions/node/v5.5.0/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

export EDITOR="/usr/bin/nvim"
# bindkey -v

bindkey -M viins 'jf' vi-cmd-mode
# Mash j and k together to enter command mode
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd '^L' vi-repeat-find

export KEYTIMEOUT=10

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
bindkey -M menuselect ${terminfo[kcbt]} reverse-menu-complete

# TODO: Source my aliases into ZSH_CUSTOM
if [[ -f ~/.aliases ]];then
  source $HOME/.aliases
fi

if [[ -f ~/.shell_funcs ]];then
  source $HOME/.shell_funcs
fi

if [[ -f ~/.env_vars ]];then
  source $HOME/.env_vars
fi


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /home/rjmill/.nvm/versions/node/v6.2.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /home/rjmill/.nvm/versions/node/v6.2.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh
