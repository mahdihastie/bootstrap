#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

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
