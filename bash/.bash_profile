for src in $(find . -maxdepth 1 -name '.*_aliases' -type l)
  do
    . $src
  done

export CODE=$HOME/_CODE
export PATH=$PATH:$HOME/bin
