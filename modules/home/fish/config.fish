if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x LANG zh_CN.UTF-8
set -x GOPATH $HOME/.go

if test -d $HOME/.local/bin
	set -x PATH $HOME/.local/bin $PATH
end

starship init fish | source
