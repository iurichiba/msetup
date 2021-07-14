#!/bin/sh
source "${BASH_SOURCE%/*}/../../helpers/colors.sh"

# Checking if NPM is installed
echo "${MAGENTA}Checking if ${BOLD}NPM ${RESET}${MAGENTA}is installed...${RESET}"
if type "npm" > /dev/null; then
	echo "${GREEN}💡 NPM is already installed!${RESET}"
else 
	echo "${CYAN}Installing ${BOLD}MAS${RESET}${CYAN}...${RESET}"
	brew install npm
fi

echo "${CYAN}Installing ${BOLD}GLOBAL NPM Packages${RESET}${CYAN}...${RESET}"
npm install -g expo-cli gulp gulp-cli tldr
