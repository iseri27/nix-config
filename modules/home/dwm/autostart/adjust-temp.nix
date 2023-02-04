''
#!/usr/bin/env bash

if ! command -v xbrightness.sh &> /dev/null; then
	exit 1
fi

h=`date "+%H"`

if [[ $h -ge 17 ]]; then
	xbrightness.sh = eDP1 0.3 --temp
fi
''
