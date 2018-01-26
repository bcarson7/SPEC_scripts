#!/usr/bin/python
import commands
import sys

PHRX_TEST = sys.argv[1]

lines = []
with open(PHRX_TEST, "rt") as phrx:
        for line in phrx:
                lines.append(line)
print("Apache Benchmark 2.4.7 " + lines[881])
print("PHPBench 0.8.1 " + lines[912])
