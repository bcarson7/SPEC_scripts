#!/usr/bin/python
import commands
import sys

PHRX_TEST = sys.argv[1]
BENCH1 = "Apache Benchmark 2.4.7"
BENCH2 = "PHPBench 0.8.1"

lines = []
with open(PHRX_TEST, "rt") as phrx:
        for line in phrx:
                lines.append(line)
print(BENCH1 + lines[877])
print(BENCH2 + lines[908])
