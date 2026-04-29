#!/usr/bin/env bash

awk '/port=(22|80|443|3389)/ { print $2 " " $4 }' ../ids.log | sort -u | awk '{ ARR[$1]++; if (ARR[$1] == 4) print $1 }'
