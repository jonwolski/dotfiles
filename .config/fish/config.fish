if status is-interactive
    # Commands to run in interactive sessions can go here
end

set brewcmd (path filter /opt/homebrew/bin/brew /usr/local/bin/brew)[1]
and $brewcmd shellenv | source

source ($brewcmd --prefix asdf)/libexec/asdf.fish

# Setting PATH for Python 3.9
# The original version is saved in /Users/jonathan.k.wolski/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.9/bin" "$PATH"
