#!/usr/bin/env python
import sys

count = 0
for number in sys.stdin:
    if int(number) % 2 == 0:
        count += 1

print count
