if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias todo='rg -t markdown --sort path -F -- "- [ ]" ~/notes/ ~/today.md'
set brewcmd (path filter /opt/homebrew/bin/brew /usr/local/bin/brew)[1]
and $brewcmd shellenv | source

source ($brewcmd --prefix asdf)/libexec/asdf.fish
