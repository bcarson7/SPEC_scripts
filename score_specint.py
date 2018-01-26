#!/usr/bin/python
import commands
import sys

INT_TEST = sys.argv[1]

lines = []
with open(INT_TEST, "rt") as cint:
        for line in cint:
                lines.append(line)
print(lines[57])
