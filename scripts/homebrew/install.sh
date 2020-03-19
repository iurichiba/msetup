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

OPTION1="Create a new /Homebrewed folder in my user's Applications folder"
OPTION2="Use system-wide Applications folder (not recommended!)"
echo "${CYAN}👩‍💼 Please choose an option before we proceed with cask installation:${RESET}"
select answer in "${OPTION1}" "${OPTION2}"; do
    case $answer in
        "${OPTION1}" ) export HOMEBREW_USE_CUSTOM_PATH=true; break;;
        "${OPTION2}" ) break;;
    esac
done

echo "${CYAN}Installing ${BOLD}Homebrew formulae & casks${RESET}${CYAN}...${RESET}"
(cd ${SPATH} && brew bundle --no-lock)
