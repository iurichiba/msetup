HOMEBREWED_PATH = "~/Applications/[Home]brewed".freeze
DEFAULT_PATH = "/Applications".freeze
USE_CUSTOM_PATH = false.freeze # TODO: Refactor to ask the user the answer

def getPath(subpath)
	HOMEBREWED_PATH + subpath
end

def shouldUseCustomPath?
	USE_CUSTOM_PATH
end
