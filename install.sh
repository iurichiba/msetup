#!/bin/sh
SPATH=${BASH_SOURCE%/*}
source "${SPATH}/helpers/colors.sh"

echo "${MAGENTA}Checking if ${BOLD}xcode-select ${RESET}${MAGENTA}is installed...${RESET}"
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; then
   echo "${GREEN}💡 xcode-select is already installed!${RESET}"
else
   echo "${RED}👩‍🚒 You have to install xcode-select first. Please run ${BOLD}xcode-select --install${RESET}${RED} before trying again.${RESET}"; exit 1;	
fi

# Install EVERYTHING!111
echo "${MAGENTA}Running ${BOLD}Homebrew${RESET}${MAGENTA} scripts...${RESET}"
${SPATH}/scripts/homebrew/install.sh
echo "${MAGENTA}Running ${BOLD}App Store${RESET}${MAGENTA} scripts...${RESET}"
${SPATH}/scripts/appStore/install.sh
echo "${MAGENTA}Running ${BOLD}Ruby${RESET}${MAGENTA} scripts...${RESET}"
${SPATH}/scripts/ruby/install.sh
echo "${MAGENTA}Running ${BOLD}Node${RESET}${MAGENTA} scripts...${RESET}"
${SPATH}/scripts/node/install.sh
echo "${MAGENTA}Running ${BOLD}Utilities${RESET}${MAGENTA} scripts...${RESET}"
${SPATH}/scripts/customizations/sublime-bin.sh
${SPATH}/scripts/customizations/install-yadr.sh
