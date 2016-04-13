# .bash_profile

# Get environment variables
if [[ -f ~/.env_vars ]]; then
  . ~/.env_vars
fi

# Get the aliases and functions
if [[ -f ~/.bashrc ]]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
