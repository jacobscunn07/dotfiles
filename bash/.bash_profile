if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi

if [ -f ~/.docker-compose_aliases ]; then
    . ~/.docker-compose_aliases
fi

if [ -f ~/.kubectl_aliases ]; then
    . ~/.kubectl_aliases
fi

# will probably need to validate bin folder exists
export CODE=$HOME/_CODE
export PATH=$PATH:/Users/jacobcunningham/bin
# export PATH=$PATH:$HOME/bin
