#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

# Gems Installation
echo "${YELLOW}Directory surfing! 🏄‍♀️${RESET}"
DIR=$(dirname "${BASH_SOURCE[0]}")
ROOT=$(pwd)
echo "${YELLOW}Surfing to ${DIR}${RESET}"
cd $DIR

echo "${CYAN}Installing ${BOLD}RubyGems${RESET}${CYAN}...${RESET}"
bundle install

echo "${YELLOW}Surfing back to script location! 🏄‍♂️${RESET}"
cd $ROOT
