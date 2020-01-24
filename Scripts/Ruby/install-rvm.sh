#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

# RVM: https://rvm.io
echo "${CYAN}Installing ${BOLD}RVM${RESET}${CYAN}...${RESET}"
\curl -sSL https://get.rvm.io | bash -s stable
if ! type "rvm" > /dev/null; then
	source ~/.rvm/scripts/rvm
fi

rvm install ruby-head && rvm --default use ruby-head

