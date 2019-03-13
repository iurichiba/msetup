#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# Tappity Tap Tap
echo "Tapping ${BOLD}homebrew/core...${RESET}"
brew tap homebrew/core

# Dependencies
echo "Installing ${BOLD}dependencies...${RESET}"
brew install 			\
git 					\
openssl					\
openssl@1.1				\
pkg-config 				

# Databases
echo "Installing ${BOLD}databases...${RESET}"
brew install 			\
mongodb 				\
mysql 					\
sqlite 					

# Development Libraries
echo "Installing ${BOLD}development libraries...${RESET}"
brew install 			\
angular-cli 			\
elixir 					\
node 					\
npm 					\
python 					

# Environments
echo "Tapping ${BOLD}heroku/brew...${RESET}"
brew tap heroku/brew
echo "Installing ${BOLD}development environments...${RESET}"
brew install 			\
firebase-cli 			\
heroku 					\
heroku-node 			

# COOL STUFF!!1
echo "Installing ${BOLD}cool stuff!11${RESET}"
brew install 			\
shpotify 				
