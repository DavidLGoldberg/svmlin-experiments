#!/usr/bin/env python
import sys


for line in sys.stdin:
    if int(line) % 2 == 0:
        print '1'
    else:
        print '-1'
