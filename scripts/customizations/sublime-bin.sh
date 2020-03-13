#!/bin/sh

if ! type "sublime" > /dev/null; then
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
fi
