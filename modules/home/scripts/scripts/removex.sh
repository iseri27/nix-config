#!/usr/bin/env bash

# 用来给普通文件去除执权限
# 也没什么，就是看着烦人
dir=`pwd`
if test $# -le 0; then
    echo "Default: Current Directory."
else
    dir=$1
fi

find ${dir} -type f > ./filename.text

cat ./filename.text | while read line
do
    chmod 644 "$line"
    if test $? -ne 0; then
        echo "Failed @ \"$line\""
        exit 1
    fi
done
