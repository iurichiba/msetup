#!/bin/sh
SPATH=${BASH_SOURCE%/*}
source "${SPATH}/../../helpers/colors.sh"

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
gem install bundler # necessary for gemfile-based installation
echo "${CYAN}Installing ${BOLD}RubyGems${RESET}${CYAN}...${RESET}"
(cd ${SPATH} && bundle install)
