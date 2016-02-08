# .bash_profile

if [[ -f ~/.env_vars ]]; then
  . ~/.env_vars
fi

# Get the aliases and functions
if [[ -f ~/.bashrc ]]; then
	. ~/.bashrc
fi
