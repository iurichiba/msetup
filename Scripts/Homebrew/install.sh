#!/bin/sh -
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

# Brewing
if type "brew" > /dev/null; then
	echo "${GREEN}Homebrew already installed!${RESET} 🍺"
else 
	echo "Installing ${BOLD}Homebrew${RESET}..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "${YELLOW}Directory surfing! 🏄‍♀️${RESET}"
DIR=$(dirname "${BASH_SOURCE[0]}")
ROOT=$(pwd)
echo "${YELLOW}Surfing to ${DIR}${RESET}"
cd $DIR

echo "${CYAN}Installing ${BOLD}Homebrew formulae & casks${RESET}${CYAN}...${RESET}"
brew bundle

echo "${YELLOW}Surfing back to script location! 🏄‍♂️${RESET}"
cd $ROOT
