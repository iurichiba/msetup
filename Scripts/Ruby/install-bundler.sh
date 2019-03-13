#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# RVM: https://rvm.io
echo "Installing ${BOLD}Bundler...${RESET}"
gem install bundler
