#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

########################################################################################
# ### NPM //GLOBAL// Packages
# • Bower:					Web Package Manager
# • Create Next App: 		Wizard for React Apps w/ Next
# • Create React App: 		Wizard for React Apps
# • Gulp CLI:				GULP via CLI
# • Gulp: 					Scripting Tool
# • TLDR:					Easier documentation for CLI commands
# • Yarn:					Better NPM
echo "Installing ${BOLD}GLOBAL NPM Packages...${RESET}"
npm install -g 		\
bower 				\
create-next-app 	\
create-react-app 	\
gulp 				\
gulp-cli 			\
tldr 				\
yarn 				