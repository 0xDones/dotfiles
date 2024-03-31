#!/bin/bash

install_brew(){
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

main() {
  install_brew
}

main
