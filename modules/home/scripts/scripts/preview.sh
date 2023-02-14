#!/usr/bin/env bash

FILE_PATH="${1}"
MIMETYPE="$( file --dereference --brief --mime-type -- "${FILE_PATH}" )"


DEFAULT_SIZE="1920x1080"
IMAGE_CACHE_PATH="${HOME}/.cache/fzf"
IMAGE_PREVIEW_SCRIPT=${HOME}/Software/scripts/fzf/u.sh

case $MIMETYPE in
	text/*)
		env COLORTERM=8bit bat --color=always --style="plain" -- "${FILE_PATH}"
		;;
	inode/directory)
		exa -1 "${FILE_PATH}"
		;;
	*)
		file "$FILE_PATH" | awk -F ':' '{print $2}'
		;;
esac
