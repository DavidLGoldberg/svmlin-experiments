#!/usr/bin/env python
import sys
from sys import stdout


for line in sys.stdin:
    for idx, digit in enumerate(line.rstrip('\n'), start=1):
        stdout.write('%s:%s ' % (idx, digit))

    print ''
