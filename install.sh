YELLOW='\033[1;33m'
NC='\033[0m'

info () {
    printf "${YELLOW}$1${NC}\n"
}

install_dotfiles () {
  info 'Installing dotfiles.'

  for src in $(find $PWD -name '.*' -type f)
  do
     ln -sfv $src ~
  done
}

install_dotfiles