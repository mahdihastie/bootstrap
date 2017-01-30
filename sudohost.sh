#!/bin/sh

#--sudo)
#  SUDO_ENABLE=true;
#;;

SUDO_CMD='sudo'
echo "Please enter the host name"
read NAME
echo "the hostname is now $NAME"

eval $SUDO_CMD scutil --set ComputerName $NAME
eval $SUDO_CMD scutil --set LocalHostName $NAME
eval $SUDO_CMD scutil --set HostName $NAME
