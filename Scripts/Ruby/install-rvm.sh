#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# RVM: https://rvm.io
echo "Installing ${BOLD}RVM...${RESET}"
\curl -sSL https://get.rvm.io | bash -s stable
if type "rvm" > /dev/null; then
	rvm install ruby-head && rvm --default use ruby-head
else 
