#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RED="\033[31m"
CYAN="\033[36m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

########################################################################################
# ### NPM //GLOBAL// Packages
# • Create Next App: 		Wizard for React Apps w/ Next
# • Create React App: 		Wizard for React Apps
# • Gulp CLI:				GULP via CLI
# • Gulp: 					Scripting Tool
# • TLDR:					Easier documentation for CLI commands
# • Yarn:					Better NPM

echo "${CYAN}Installing ${BOLD}GLOBAL NPM Packages${RESET}${CYAN}...${RESET}"
npm install -g 			\
create-next-app 		\
create-react-app 		\
gulp 				\
gulp-cli 			\
tldr 				\
yarn 				