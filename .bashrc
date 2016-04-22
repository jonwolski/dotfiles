
 . $HOME/.shellrc.load

if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi
. ~/.bash_completions.d/*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
