USE_CUSTOM_PATH_KEY = 'HOMEBREW_USE_CUSTOM_PATH'.freeze
HOMEBREWED_PATH = "~/Applications/Homebrewed".freeze

GREEN = "\033[32m".freeze
RESET = "\033[0m".freeze

def printInstallationPath
	if shouldUseCustomPath?
		puts "#{GREEN}🧰 Installing casks on custom path: #{HOMEBREWED_PATH}/:category#{RESET}"
	else puts "#{GREEN}🧰 Installing casks on default path (/Applications)#{RESET}"
	end
end

def shouldUseCustomPath?
	# no booleans for env variables /sadface
	ENV[USE_CUSTOM_PATH_KEY] == "true"
end

def getPath(subpath)
	HOMEBREWED_PATH + subpath
end