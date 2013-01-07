#!/bin/sh
#
#   This is ths installation script for the OSX Clean installation
#
#   Install using this command
#   curl raw.github.com/madsgraphics/osx-clean-install/master/install.sh | sh

# Set up the environment
    set -e
    INSTALL_ROOT="$HOME/ox-clean-install"

# Get the lastest version of the installer
    git clone https://github.com/madsgraphics/osx-clean-install $INSTALL_ROOT
    cd $INSTALL_ROOT

# Ask for the administrator password upfront
    sudo -v

# Keep-alive: update existing `sudo` time stamp until the installer has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Settings
