#!/usr/bin/env bash

## Lines in a given range ##
# Write a bash script to print all the lines of the input which are in the given range.
#
# The first line of the input contains two integers l and r separated by space.
#
# You have to print all the lines of the file input which are in the range of [l, r].
#
# Example:
#
# Assume that the input has the following content.
#
# 10 15
# Line 2
# Line 3
# Line 4
# Line 5
# Line 6
# Line 7
# Line 8
# Line 9
# Line 10
# Line 11
# Line 12
# Line 13
# Line 14
# Line 15
# Line 16
# Line 17
# Line 18
# Line 19
# Line 20
# Your bash script should output the following
#
# Line 10
# Line 11
# Line 12
# Line 13
# Line 14
# Line 15

if [ -f "input.test" ]; then
    rm input.test
fi

echo "4 6" >> input.test
echo "Line 2" >> input.test
echo "Line 3" >> input.test
echo "Line 4" >> input.test
echo "Line 5" >> input.test
echo "Line 6" >> input.test
echo "Line 7" >> input.test
echo "Line 8" >> input.test
echo "Line 9" >> input.test
echo "Line 10" >> input.test
echo "Line 11" >> input.test
echo "Line 12" >> input.test
echo "Line 13" >> input.test
echo "Line 14" >> input.test
echo "Line 15" >> input.test

l=$(head -n 1 input.test | cut -d ' ' -f 1)
r=$(head -n 1 input.test | cut -d ' ' -f 2)
echo "left:$l right:$r"
#cat input.test | head -n $r | tail -n `expr $r - $l + 1`
cat input.test | head -n ${r} | tail -n $((r - l + 1))

rm input.test