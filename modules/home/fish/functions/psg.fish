#!/usr/bin/env fish
function psg
    ps -ax | grep $argv | grep -v grep
end
