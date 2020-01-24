#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
MAGENTA="\033[35m"
RESET="\033[0m"


echo "${MAGENTA}Checking if ${BOLD}xcode-select ${RESET}${MAGENTA}is installed...${RESET}"
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; then
   echo "${GREEN}xcode-select is already installed! 💡${RESET}"
else
   echo "${RED}👩‍🚒 You have to install xcode-select first. Please run ${BOLD}xcode-select --install${RESET}${RED} before trying again.${RESET}"; exit 1;	
fi

# Install EVERYTHING!111
echo "${MAGENTA}Running ${BOLD}Homebrew${RESET}${MAGENTA} scripts...${RESET}"
./Scripts/Homebrew/install.sh
echo "${MAGENTA}Running ${BOLD}Node${RESET}${MAGENTA} scripts...${RESET}"
./Scripts/Node/install-packages.sh
echo "${MAGENTA}Running ${BOLD}Utilities${RESET}${MAGENTA} scripts...${RESET}"
./Scripts/Customizations/sublime-bin.sh
./Scripts/Customizations/install-yadr.sh
echo "${MAGENTA}Running ${BOLD}Ruby${RESET}${MAGENTA} scripts...${RESET}"
./Scripts/Ruby/install-rvm.sh
./Scripts/Ruby/install-bundler.sh
./Scripts/Ruby/install-gems.sh

# Clean everything (YADR command)
if type "brewu" > /dev/null; then
  brewu 
fi
