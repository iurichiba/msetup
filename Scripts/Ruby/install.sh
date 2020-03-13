#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

# Checking if RBENV is installed
echo "${MAGENTA}Checking if ${BOLD}RBENV ${RESET}${MAGENTA}is installed...${RESET}"
if type "brew" > /dev/null; then
	echo "${GREEN}💎 RBENV already installed!${RESET}"
else 
	echo "${CYAN}Installing ${BOLD}RBENV${RESET}${CYAN}...${RESET}"
	brew install rbenv
fi

# Install user's ruby
RBENVUSING=$(rbenv global)
if [ $RBENVUSING == "system" ]; then
	echo "${RED}⚠️  You're using the system ruby version! You shouldn't mess with that.${RESET}"
	RUBYV=2.6.0 
	RBENVPATH="$HOME/.rbenv/versions/${RUBYV}"
	if [ ! -d $RBENVPATH ]; then
		echo "${CYAN}Installing ${BOLD}new Ruby version${RESET}${CYAN}...${RESET}"
		rbenv install $RUBYV
	fi
	rbenv global $RUBYV
	echo "${GREEN}✅ Ruby version changed to [user-bound] ${RUBYV}{RESET}"
else
	echo "${GREEN}✅ Ruby version OK${RESET}"
fi

# Gems Installation
echo "${CYAN}Installing ${BOLD}Bundler${RESET}${CYAN}...${RESET}"
gem install bundler
echo "${YELLOW}Directory surfing! 🏄‍♀️${RESET}"
DIR=$(dirname "${BASH_SOURCE[0]}"); ROOT=$(pwd)
echo "${YELLOW}Surfing to ${DIR}${RESET}"
cd $DIR

echo "${CYAN}Installing ${BOLD}RubyGems${RESET}${CYAN}...${RESET}"
bundle install

echo "${YELLOW}Surfing back to where you were! 🏄‍♂️${RESET}"
cd $ROOT
