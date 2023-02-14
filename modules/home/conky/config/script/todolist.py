#!/usr/bin/env python
# -*- coding: utf-8 -*-
from os import environ
from os.path import join

NOTHING_TO_DO = 'NOTHING TO DO'

# 最多显示的数量
MAX_TO_DISPLAY = 13

tdpath = join(environ['HOME'], '.todolist')

try:
    tasks = open(tdpath).readlines()

except FileNotFoundError as e:
    print(NOTHING_TO_DO)
    exit(0)

cnt = 0

lt = []

for i in range(len(tasks)):
    if len(tasks[i].strip()) > 0:

        # 以 # 开头的行会被忽略
        if tasks[i][0] == '#':
            continue

        tasks[i] = tasks[i].split(" ", 1)[1]

        lt.append(tasks[i])

        if len(lt) == MAX_TO_DISPLAY:
            break

if len(lt) == 0:
    print(NOTHING_TO_DO)

for i in range(len(lt)):
    if len(lt) >= 10:
        print(
            '{No:02d}. {description}'.format(
                No=i+1,
                description=lt[i]
            ),
            end=''
        )

    else:
        print(
            '{No}. {description}'.format(
                No=i+1,
                description=lt[i]
            ),
            end=''
        )

