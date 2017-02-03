#!/bin/sh

SUDO_CMD='sudo'

brew install mas
mas upgrade
eval $SUDO_CMD softwareupdate -iva
