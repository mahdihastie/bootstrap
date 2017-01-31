#!/bin/sh

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

SUDO_CMD='sudo'

chmod +x hostname.sh
eval $SUDO_CMD ./hostname.sh

chmod +x user.sh
eval $SUDO_CMD ./user.sh

chmod +x cask.sh
eval $SUDO_CMD ./cask.sh

chmod +x filevault.sh
eval $SUDO_CMD ./filevault.sh
