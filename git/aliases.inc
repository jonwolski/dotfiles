[alias]
        st = status
        s = status
        d = diff
        di = diff
        co = checkout
        ci = commit
        br = branch
        lol = log --graph --decorate --oneline
        lola = log --graph --decorate --oneline --all
        lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
        p = pull
        gst = git
        sta = stash
        llog = log --date=local
        flog = log --pretty=fuller --decorate
        blog = log origin/main... --left-right
        ds = diff --staged
        fixup = commit --fixup
        squash = commit --squash
        unstage = reset HEAD
        rum = rebase main@{u}
        gst = git
        pushf = push -f --force-with-lease=HEAD
