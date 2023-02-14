#!/usr/bin/env fish
function ranger
	if test $TERM = "dumb"
		echo "You cannot execute ranger in this terminal."
		return -1
	end

    command ranger --choosedir=$HOME/.rangerdir; set LASTDIR (cat $HOME/.rangerdir); cd "$LASTDIR" $argv
end
