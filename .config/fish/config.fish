if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /usr/local/opt/asdf/libexec/asdf.fish
alias todo='rg -t markdown --sort path -F -- "- [ ]" ~/notes/ ~/today.md'
