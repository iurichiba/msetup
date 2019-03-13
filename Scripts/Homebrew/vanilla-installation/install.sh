#!/bin/bash -
set -e

# Constants
RED="\033[31m"
GREEN="\033[32m"
NOCOLOR="\033[0m"
DIR=$(dirname -- "$0")

# Brewing
if type "brew" > /dev/null; then
	echo -e "${GREEN}Homebrew already installed!${NOCOLOR} 🍺"
else 
	echo "Installing homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing formulae..."
$DIR/formulae.sh

echo "Installing casks..."
$DIR/casks.sh
