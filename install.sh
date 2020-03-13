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
   echo "${GREEN}💡 xcode-select is already installed!${RESET}"
else
   echo "${RED}👩‍🚒 You have to install xcode-select first. Please run ${BOLD}xcode-select --install${RESET}${RED} before trying again.${RESET}"; exit 1;	
fi

# Install EVERYTHING!111
echo "${MAGENTA}Running ${BOLD}Homebrew${RESET}${MAGENTA} scripts...${RESET}"
./scripts/homebrew/install.sh
echo "${MAGENTA}Running ${BOLD}App Store${RESET}${MAGENTA} scripts...${RESET}"
./scripts/appStore/install.sh
echo "${MAGENTA}Running ${BOLD}Ruby${RESET}${MAGENTA} scripts...${RESET}"
./scripts/ruby/install.sh
echo "${MAGENTA}Running ${BOLD}Node${RESET}${MAGENTA} scripts...${RESET}"
./scripts/node/install.sh
echo "${MAGENTA}Running ${BOLD}Utilities${RESET}${MAGENTA} scripts...${RESET}"
./scripts/customizations/sublime-bin.sh
./scripts/customizations/install-yadr.sh
