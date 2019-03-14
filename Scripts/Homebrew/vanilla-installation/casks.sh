#!/bin/sh
set -e

# Constants
BOLD="\033[1m"
RESET="\033[0m"

# Tappity Tap Tap
echo "Tapping ${BOLD}brew/casks...${RESET}"
brew tap homebrew/cask

########################################################################################
# ### DEVELOPMENT TOOLS
# • Atom:					Text Editor & IDE
# • Azure Data Studio: 		SQL Server Management Tool
# • ChromeDriver:			WebDriver for Chrome (dependency)
# • CocoaPods:				Package Manager for iOS
# • Dash:					API Docs Collection
# • DataGrip:				Database Management Tool (supports SQL Server, MySQL, etc)
# • Fastlane: 				Automation for iOS & Android Apps
# • Insomnia:				API Development Tool (alternative to Postman)
# • iTerm 2:				Terminal Interface for Mac
# • MySQL Workbench:		MySQL Management Tool
# • Postman:				API Development Tool
# • Sourcetree:				Git Graphic Interface
# • Sublime Text:			Text Editor & IDE (better than Atom, sue me)
# • Visual Studio Code: 	.NET Core IDE (also supports other languages)
echo "Installing ${BOLD}development tools...${RESET}"
brew cask install 	\
atom 				\
azure-data-studio 	\
chromedriver 		\
cocoapods 			\
dash 				\
datagrip 			\
fastlane 			\
insomnia 			\
iterm2				\
mysqlworkbench 		\
postman 			\
sourcetree 			\
sublime-text 		\
visual-studio-code 	

########################################################################################
# ### VIRTUALIZATION TOOLS
# • Captain:			 	Docker Manager (manage containers easily)
# • Docker:					VM Container Management Tool
echo "Installing ${BOLD}virtualization tools...${RESET}"
brew cask install 	\
captain 			\
docker 				

########################################################################################
# ### NETWORK MANAGEMENT TOOLS
# • Charles:				Network Management Tool (review connections, packages, etc)
# • Cyberduck:				FTP Connection Tool (and it's also a cute rubber duck)
# • Little Snitch:			Network Management Tool (control connections, packages, etc)
echo "Installing ${BOLD}network management tools...${RESET}"
brew cask install 	\
charles 			\
cyberduck 			\
little-snitch 		

########################################################################################
# ### UTILITIES
# • Alfred:					Improved Spotlight
# • Google Chrome:			Alternative Browser (Safari is better, tho)
# • MacDown:				Markdown Editor
# • MacPass:				Keepass for Mac
# • Microsoft Office:		...office
# • Microsoft Teams: 		Microsoft's Slack (but worse)
# • Mozilla Firefox:		Alternative Browser (Safari is better, tho)
# • One Drive:				Microsoft Storage Tool
# • Skype for Business:		Skype, but for Business
# • Slack:					Best Team Communication Tool ever!
# • The Unarchiver:			Unarchive everything! (.rar, .7zip, etc)
# • Vanilla:	 			Hide Menu Bar icons!
echo "Installing ${BOLD}utilities...${RESET}"
brew cask install 	\
alfred 				\
firefox 			\
google-chrome 		\
macdown 			\
macpass 			\
microsoft-office 	\
microsoft-teams 	\
onedrive 			\
skype-for-business 	\
slack 				\
the-unarchiver 		\
vanilla 			

########################################################################################
# ### DESIGN TOOLS
# • Espresso:				WebDesign Tool
# • ImageOptim:				Image Optimization
# • Sketch:					UI/UX Design Tool
# • XMind Zen:				Flowchart Design Tool
# • Zeplin:					Pixel-perfect design!
echo "Installing ${BOLD}design tools...${RESET}"
brew cask install 	\
espresso 			\
imageoptim 			\
sketch 				\
xmind-zen 			\
zeplin 				

########################################################################################
# ### ENTERTAINMENT
# • Bearded Spice:			Media Buttons Preferences
# • Boom 3D:				System-wide equalizer
# • Cave Story:				GOTY!!11
# • Spotify:				Music Streaming Tool
echo "Installing ${BOLD}cool stuff!11${RESET}"
brew cask install 	\
beardedspice 		\
boom-3d 			\
cave-story 			\
spotify 			
