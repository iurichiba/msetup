#!/bin/sh
source "${BASH_SOURCE%/*}/../../helpers/colors.sh"

if type "sublime" > /dev/null; then
	echo "${GREEN}💡 Sublime Text alias is already configured!${RESET}"
else
	echo "Setting up ${BOLD}Sublime Text alias${RESET}..."
	ln -s "~/Applications/Development Tools/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
fi
