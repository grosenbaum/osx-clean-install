#!/bin/sh

# Menu bar: hide unused icons
    defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Reduce on window dbl-tap
    defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool true

# Expand save panel by default
    defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
    defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save new Docs to Cloud
    defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool true

# Automatically quit printer app once the print jobs complete
    defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
    defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
    defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable automatic termination of inactive apps
    defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Set Help Viewer windows to non-floating mode
    defaults write com.apple.helpviewer DevMode -bool true

# Restart automatically if the computer freezes
    systemsetup -setrestartfreeze on

# Check for software updates daily, not just once per week
    defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
