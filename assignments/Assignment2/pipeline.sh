#!/bin/bash
# Assignment 2, Exercise 4: Read, Sort and Trim
#
# Given input.dat (created below), do three things:
#   1. Sort the lines in DESCENDING order
#   2. Save the full sorted result to sorted.dat
#   3. Print to stdout: skip the first line, then show the next 5 lines
#
# Hint: Think pipeline — you can do this in very few lines.
#       Look into: sort, tee, head, tail

printf "3\n2\n10\n5\n100\n25\n12\n13\n6\n" > input.dat

# Do not modify the above. Start your code here.

cat input.dat | sort -rn > sorted.dat

# You can use awk to print out lines 2-6.
# you just have to check the NR which represents the current line number
awk '{if (NR > 1 && NR < 7) print $0}' sorted.dat