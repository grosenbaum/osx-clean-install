#!/bin/sh

# Set computer name
    name="$(scutil --get ComputerName)"
    echo "Enter the computer name [$name]: \c"
    read name
    COMPUTER_NAME="$name"
    NETBIOS_NAME="$(echo $name | sed 's/ /\-/g; s/\-\-/\-/g' | tr -d "'")"
    sudo scutil --set ComputerName "$COMPUTER_NAME"
    sudo scutil --set HostName "$COMPUTER_NAME"
    sudo scutil --set LocalHostName $NETBIOS_NAME
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $NETBIOS_NAME
