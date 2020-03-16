#!/bin/sh
set -e
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
    echo "${BOLD}.msetup is cloned already. Try running install.sh from ${MSETUPPATH}${RESET}"
fi
