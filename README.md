# dotfiles
My configuration files for various things.

I keep all my commonly used config files in here, and make symlinks to them
wherever their respective software expects them to be.

For example, if I'm keeping this repo in `~/.dotfiles`, and I want to use my
`.vimrc` on that system, I'll use `ln -s ~/.dotfiles/.vimrc ~/`. Then I can keep
all my config files synced with git, with the added bonus of having them backed
up on github.

I try to keep these well-documented and clean, both for my own sake and for the
sake of anyone looking to these as a guide, but sometimes I forget, especially
when I'm making quick changes. If you have any questions or comments, please
feel free to open an issue or even submit a pull request.
