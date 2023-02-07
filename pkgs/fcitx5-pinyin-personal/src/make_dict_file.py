# -*- coding: utf-8 -*-
import sys, os
fin_name = sys.argv[1]

fin = open(fin_name, 'r')
lines = fin.readlines()

for item in lines:
    if item and not item.strip().startswith('#'):
        elem  = item.split()
        print(elem[0], elem[1], elem[2], sep=' ')

