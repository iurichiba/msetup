#!/bin/sh
SPATH=${BASH_SOURCE%/*}
source "${SPATH}/../../helpers/colors.sh"

# Checking if Homebrew is installed
echo "${MAGENTA}Checking if ${BOLD}Homebrew ${RESET}${MAGENTA}is installed...${RESET}"
if type "brew" > /dev/null; then
	echo "${GREEN}🍺 Homebrew already installed!${RESET}"
else 
	echo "Installing ${BOLD}Homebrew${RESET}..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

while true; do
	echo "${CYAN}👩‍💼 Should the applications be installed in your user's Application folder?${RESET}"
    read -p "👩‍💼 Please answer with yes (Yy) or no (Nn): " input
    case $input in
        [Yy]* ) export HOMEBREW_USE_CUSTOM_PATH=true; break;;
        [Nn]* ) break;;
        * ) echo "${RED}⚠️  Invalid input!${RESET}\n";;
    esac
done

echo "${CYAN}Installing ${BOLD}Homebrew formulae & casks${RESET}${CYAN}...${RESET}"
(cd ${SPATH} && brew bundle --no-lock)
