function todo
    if test (count $argv) -eq 0
        rg -t markdown --sort path -F -- "- [ ]" ~/notes/ ~/today.md
    else
        rg -t markdown --sort path -F -- "- [ ]" $argv
    end
end

