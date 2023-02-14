#!/usr/bin/env python

import os
timestr = os.popen("cat /var/log/pacman.log | grep \"full system upgrade\" | tail -1 | awk -F ' ' '{{print$1}}'").read()
print(timestr[1:11] + ' ' + timestr[12:20])
