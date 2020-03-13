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

# Checking if NPM is installed
echo "${MAGENTA}Checking if ${BOLD}NPM ${RESET}${MAGENTA}is installed...${RESET}"
if type "npm" > /dev/null; then
	echo "${GREEN}💡 NPM is already installed!${RESET}"
else 
	echo "${CYAN}Installing ${BOLD}MAS${RESET}${CYAN}...${RESET}"
	brew install npm
fi

echo "${CYAN}Installing ${BOLD}GLOBAL NPM Packages${RESET}${CYAN}...${RESET}"
npm install -g create-react-app expo-cli gulp gulp-cli tldr yarn
