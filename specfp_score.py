#!/usr/bin/python
import commands
import sys

FP_TEST = sys.argv[1]

lines = []
with open(FP_TEST, "rt") as cfp:
        for line in cfp:
                lines.append(line)
print(lines[72])
