''
function ff
	set argc (count $argv)
	if test $argc = 0
		set path $HOME
	else
		set path $argv[1]
	end

	set f (find $path ! -path "**/.*" ! -path "**/.git*" ! -path "**/.w3m*" ! -path "**/.swt*" ! -path "**/node_modules*" | fzf --preview-window='up' --preview '/home/corona/Documents/applications/scripts/fzf/preview.sh {}')

	set f (string trim $f)

	if not test -n "$f"
		return
	end

	set t (/home/corona/Documents/applications/scripts/fzf/judge_type.sh $f)

	if test "$t" = "text"
		cd (dirname $f)
		nvim $f
	else if test $t = "image"
		r (dirname $f)
	else if test $t = "directory"
		r $f
	else
		r (dirname $f)
	end
	
	return
end
''
