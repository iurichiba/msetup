#!/bin/sh
SPATH=${BASH_SOURCE%/*}
source "${SPATH}/../../helpers/colors.sh"

# Checking if Homebrew is installed
echo "${MAGENTA}Checking if ${BOLD}Homebrew ${RESET}${MAGENTA}is installed...${RESET}"
if type "brew" > /dev/null; then
	echo "${GREEN}🍺 Homebrew already installed!${RESET}"
else 
	echo "Installing ${BOLD}Homebrew${RESET}..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "${CYAN}Installing ${BOLD}Homebrew formulae & casks${RESET}${CYAN}...${RESET}"
(cd ${SPATH} && brew bundle)
