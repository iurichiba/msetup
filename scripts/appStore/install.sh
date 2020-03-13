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

# Checking if MAS is installed
echo "${MAGENTA}Checking if ${BOLD}MAS ${RESET}${MAGENTA}is installed...${RESET}"
if type "mas" > /dev/null; then
	echo "${GREEN}💡 MAS is already installed!${RESET}"
else 
	echo "${CYAN}Installing ${BOLD}MAS${RESET}${CYAN}...${RESET}"
	brew install mas
fi

# Checking if MAS is logged
until drop=$(mas account)
do 
	read -p "$(echo "${RED}⚠️  You need to signin into the App Store!${RESET}\n${BOLD}Press RETURN to open the App Store${RESET}: ")"
	open -a App\ Store
	read -p "$(echo "${BOLD}Press RETURN when you're logged${RESET}: ")"
done

echo "${GREEN}✅ MAS is logged in!${RESET}"
echo "${CYAN}Proceeding with ${BOLD}package installation${RESET}${CYAN}...${RESET}"

echo "${YELLOW}Directory surfing! 🏄‍♀️${RESET}"
DIR=$(dirname "${BASH_SOURCE[0]}")
ROOT=$(pwd)
echo "${YELLOW}Surfing to ${DIR}${RESET}"
cd $DIR

echo "${CYAN}Installing ${BOLD}App Store applications${RESET}${CYAN}...${RESET}"
brew bundle

echo "${YELLOW}Surfing back to where you were! 🏄‍♂️${RESET}"
cd $ROOT
