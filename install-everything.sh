#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# Install EVERYTHING!111
echo "Running ${BOLD}Homebrew${RESET} scripts..."
./Scripts/Homebrew/Vanilla\ Installation/install.sh
echo "Running ${BOLD}Customization${RESET} scripts..."
./Scripts/Customizations/sublime-bin.sh
./Scripts/Customizations/install-yadr.sh
echo "Running ${BOLD}Ruby${RESET} scripts..."
./Scripts/Ruby/install-rvm.sh
./Scripts/Ruby/install-bundler.sh
echo "Running ${BOLD}Node${RESET} scripts..."
./Scripts/Node/install-packages.sh
