if status is-interactive
    ###########################################################################
    # Set up vi keybindings
    fish_vi_key_bindings insert
    # Smash J and K to get out if insert mode.
    bind --mode insert --sets-mode default jk repaint-mode
    bind --mode insert --sets-mode default kj repaint-mode
    # Make sure we actually can type J and K still.
    bind --mode insert j self-insert
    bind --mode insert k self-insert

    # Jump commands
    bind --mode default \cl repeat-jump

    # Autosuggestion
    bind --mode insert \cf accept-autosuggestion

    # source: https://github.com/fish-shell/fish-shell/issues/2271#issuecomment-352210807
    function reverse_history_search
      history | fzf --no-sort --exact | read -l command
      if test $command
        # Put command into the command line.
        commandline -rb $command
        # Force a repaint of the command line.
        commandline --function repaint
      end
    end

    function fish_user_key_bindings
      bind -M default / reverse_history_search
    end


    ###########################################################################
    # aliases and functions
    alias tree='tree -C'
    alias ta='tmux attach'
end

set PATH "$HOME"/bin $PATH


function cdn
  nvr --remote-expr 'execute("pwd")' | tr --delete '\n' | read -l new_dir
  cd $new_dir
end
