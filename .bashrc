# .bashrc

# TODO: is this how I want to handle this?
export EDITOR="/usr/bin/nvim"

if [[ -f ~/.aliases ]]; then
  . ~/.aliases
fi

if [[ -f ~/.bash_prompt ]]; then
  . ~/.bash_prompt
fi
