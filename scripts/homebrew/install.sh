#!/bin/sh
SPATH=${BASH_SOURCE%/*}
ROOT=$(pwd)

source "${SPATH}/../../helpers/colors.sh"

# Checking if Homebrew is installed
echo "${MAGENTA}Checking if ${BOLD}Homebrew ${RESET}${MAGENTA}is installed...${RESET}"
if type "brew" > /dev/null; then
	echo "${GREEN}🍺 Homebrew already installed!${RESET}"
else 
	echo "Installing ${BOLD}Homebrew${RESET}..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "${YELLOW}Directory surfing! 🏄‍♀️${RESET}"
echo "${YELLOW}Surfing to ${SPATH}${RESET}"
cd $SPATH

echo "${CYAN}Installing ${BOLD}Homebrew formulae & casks${RESET}${CYAN}...${RESET}"
brew bundle

echo "${YELLOW}Surfing back to where you were! 🏄‍♂️${RESET}"
cd $ROOT
