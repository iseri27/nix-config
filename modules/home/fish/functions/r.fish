#!/usr/bin/env fish
function r
	if test $TERM = "dumb"
		echo "You cannot execute ranger in this terminal."
		return -1
	end

	set tmp (mktemp)
    command ranger $argv --choosedir="$tmp";

	if test -f "$tmp"
		set dir (cat $tmp)
		rm -f "$tmp"
		if test -d "$dir"
			if test "$dir" != (pwd)
				cd $dir
			end
		end
	end
end
