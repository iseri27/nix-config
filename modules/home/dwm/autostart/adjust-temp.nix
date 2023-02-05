''
#!/usr/bin/env bash

if ! command -v xbrightness.sh &> /dev/null; then
	exit 1
fi

h=`date "+%H"`

if [[ $h -ge 17 ]]; then
	xbrightness.sh = eDP-1 0.3 --temp
fi

if [[ -f $HOME/.brightness ]]; then
    brightnessctl -q s $(cat $HOME/.brightness)
fi

''
