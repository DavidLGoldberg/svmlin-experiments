#!/usr/bin/env python
import sys
from sys import stdout


for line in sys.stdin:
    if int(line) % 2 == 0:
        stdout.write('1 ')
    else:
        stdout.write('-1 ')

    for idx, digit in enumerate(line.rstrip('\n'), start=1):
        stdout.write('%s:%s ' % (idx, digit))

    print ''
