#!/bin/sh
set -e
RED="\033[31m"
BOLD="\033[1m"
RESET="\033[0m"
MSETUPGIT="https://github.com/iurichiba/msetup.git"
MSETUPPATH="$HOME/.msetup"

if [ ! -d $MSETUPPATH ]; then
    echo "${BOLD}Running the setup script...${RESET}"
    git clone --depth=1 $MSETUPGIT $MSETUPPATH
    cd $MSETUPPATH
    ./install.sh
else
    echo "${RED}🚫 .msetup is cloned already. Try running ${BOLD}install.sh from ${MSETUPPATH}${RESET}"
    echo "⚠️  You might want to git pull again, btw."
fi
