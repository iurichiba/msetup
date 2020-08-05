#!/bin/sh
source "${BASH_SOURCE%/*}/../../helpers/colors.sh"

# YADR: https://github.com/skwp/dotfiles
echo "${CYAN}Installing ${BOLD}YADR...${RESET}"
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
