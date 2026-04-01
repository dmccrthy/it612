#!/usr/bin/env bash

# Grep command:
grep "192.168.1.10" log.txt

# sed to change POST to GET
sed "s/\"POST/\"GET/g" log.txt

# Try out AWK command:
awk '/"POST/ { print $4 " " $6 }' log.txt