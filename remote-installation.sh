#!/bin/sh

MSETUPGIT="https://github.com/iurichiba/mac-setup.git"
MSETUPPATH="$HOME/.msetup"

if [ ! -d $MSETUPPATH ]; then
    echo "Running the setup script..."
    git clone --depth=1 $MSETUPGIT $MSETUPPATH
    cd $MSETUPPATH
    ./install.sh
else
    echo ".msetup is cloned already. Try running install.sh from ${MSETUPPATH}"
fi
