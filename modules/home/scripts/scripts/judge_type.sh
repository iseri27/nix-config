#!/usr/bin/env bash

judge_type() {
	case $1 in
		image/*)
			echo "image"
			return
			;;
		inode/directory)
			echo "directory"
			return
			;;
		text/*)
			echo "text"
			return
			;;
	esac
}

MIMETYPE="$( file --dereference --brief --mime-type -- "${1}" )"
t=$(judge_type $MIMETYPE)
echo $t
