''
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x EDITOR $(which nvim)
set -x LANG zh_CN.UTF-8
set -x GOPATH $HOME/.go

# ls 的别名函数, 不知为何放在 functions 文件夹下不起作用

function l
    command exa -lg --icons $argv
end

function ll
	command exa -lg --icons $argv
end

function la
    command exa -a --icons $argv
end

function ls
    command exa --icons $argv
end

function lla
    command exa -alg --icons $argv
end

starship init fish | source
''
