#!/bin/sh

--sudo)
  SUDO_ENABLE=true;
;;

echo "Please enter the host name"
read NAME
echo "the hostname is now $NAME"

scutil --set ComputerName $NAME
scutil --set LocalHostName $NAME
scutil --set HostName $NAME
