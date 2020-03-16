#!/bin/sh
SPATH=${BASH_SOURCE%/*}
source "${SPATH}/../../helpers/colors.sh"

# Checking if MAS is installed
echo "${MAGENTA}Checking if ${BOLD}MAS ${RESET}${MAGENTA}is installed...${RESET}"
if type "mas" > /dev/null; then
	echo "${GREEN}💡 MAS is already installed!${RESET}"
else 
	echo "${CYAN}Installing ${BOLD}MAS${RESET}${CYAN}...${RESET}"
	brew install mas
fi

# Checking if MAS is logged
until drop=$(mas account)
do 
	read -p "$(echo "${RED}⚠️  You need to signin into the App Store!${RESET}\n${BOLD}Press RETURN to open the App Store${RESET}: ")"
	open -a App\ Store
	read -p "$(echo "${BOLD}Press RETURN when you're logged${RESET}: ")"
done; echo "${GREEN}✅ MAS is logged in!${RESET}"

echo "${CYAN}Installing ${BOLD}App Store applications${RESET}${CYAN}...${RESET}"
(cd ${SPATH} && brew bundle)
