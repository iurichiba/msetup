#!/bin/sh
set -e
RED="\033[31m"
BOLD="\033[1m"
CYAN="\033[36m"
RESET="\033[0m"
MSETUPGIT="https://github.com/iurichiba/msetup.git"
MSETUPPATH="$HOME/.msetup"

if [ ! -d $MSETUPPATH ]; then
    echo "\n${BOLD}Downloading the script into your machine...${RESET}"
    git clone --depth=1 $MSETUPGIT $MSETUPPATH
    echo "\n${CYAN}Running script...${RESET}"
    cd $MSETUPPATH && ./install.sh
else
	echo "${RED}⚠️  .msetup already exists!${RESET}"
	echo "\n${BOLD}Pulling last version from GitHub...${RESET}"
    cd $MSETUPPATH && git pull
    echo "\n${CYAN}Running script...${RESET}"
    ./install.sh
fi
