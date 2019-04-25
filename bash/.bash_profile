if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi

# will probably need to validate bin folder exists

export PATH=$PATH:/Users/jacobcunningham/bin
# export PATH=$PATH:$HOME/bin
