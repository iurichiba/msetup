#!/bin/sh
SPATH=${BASH_SOURCE%/*}
MSETUPGIT="https://github.com/iurichiba/msetup.git"
MSETUPPATH="$HOME/.msetup"

source "${SPATH}/helpers/colors.sh"

if [ ! -d $MSETUPPATH ]; then
    echo "${BOLD}Running the setup script...${RESET}"
    git clone --depth=1 $MSETUPGIT $MSETUPPATH
    cd $MSETUPPATH
    ${SPATH}/install.sh
else
    echo "${BOLD}.msetup is cloned already. Try running install.sh from ${MSETUPPATH}${RESET}"
fi
