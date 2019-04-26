YELLOW='\033[1;33m'
NC='\033[0m'

info () {
    printf "${YELLOW}$1${NC}\n"
}

install_dotfiles () {
  info 'Installing dotfiles.'

  for src in $(find $PWD -name '.*' -type f)
  do
     ln -sf $src ~
  done
}

install_commands () {
  info 'Installing commands.'
  BIN="$HOME/bin"

  if [ ! -d "$BIN" ]; then
    mkdir $BIN
  fi

  for src in $(find $PWD -path '*/bin/*' -type f)
  do
    base=$(basename $src)
    dst="$BIN/$base"
    cp $src $dst
    chmod +x $dst
  done
}

install_homebrew () {
  which -s brew
  if [[ $? != 0 ]] ; then
    info 'Installing Homebrew.'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    info 'Updating Homebrew.'
    brew update
  fi
}

install_software () {
  info 'Installing software.'
  brew bundle
}

install_homebrew
install_software
install_dotfiles
install_commands