#!/usr/bin/env fish

function cat
	if test -x /usr/bin/bat
		bat $argv
	else
		command cat $argv
	end
end
