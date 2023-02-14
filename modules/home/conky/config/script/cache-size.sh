#!/usr/bin/env bash

str=`du ~/.cache -sh`
index=`awk -v a="${str}" -v b="/home" 'BEGIN{print index(a,b)}'`
cache_size=${str:0:$((index-2))}

echo ${cache_size}

