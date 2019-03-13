#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# YADR: https://github.com/skwp/dotfiles
echo "Installing ${BOLD}YADR...${RESET}"
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
