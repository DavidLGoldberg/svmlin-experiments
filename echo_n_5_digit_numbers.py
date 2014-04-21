#!/usr/bin/env python
import random, sys, itertools

n = int(sys.argv[1])
for _ in itertools.repeat(None, n):
    print random.randint(10000, 99999)
