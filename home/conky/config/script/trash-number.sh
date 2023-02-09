#!/usr/bin/env bash

str=`du ~/.local/share/Trash/files/ -sh`
index=`awk -v a="${str}" -v b="/home" 'BEGIN{print index(a,b)}'`
trash_size=${str:0:$((index-2))}

cnt=`find ~/.local/share/Trash/files/ -maxdepth 1 | wc -l`
cnt=$((cnt-1))
if test ${cnt} -eq 0; then
    trash_size=0B
fi

echo ${cnt}
