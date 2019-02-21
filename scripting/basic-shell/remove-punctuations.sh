#!/usr/bin/env bash

## Remove Punctuations ##
# Write a bash script that removes all the punctuations in the given file named input
#
# For this question, assume that all of the following symbols are punctuations:
#
# ! @ # $ % ^ & * ( ) _ - + = { } [ ] ; : ' " ` / > ? . , < ~ | \
#
# Example:
#
# Assume that input has the following content:
#
#   This's the sunny day.
#   It is the sunny day, we can go out.
#
# Your script should output the following:
#
#   Thiss the sunny day
#   It is the sunny day we can go out

if [ -f "input.test" ]; then
    rm input.test
fi


echo "This's the sunny day." >> input.test
echo "It is the sunny day, we can go out." >> input.test
echo "Yes!! Sure." >> input.test
echo "<Sally>" >> input.test

cat input.test | tr -d "!@#$%^&*/()_\-+={}[];:.,>?<~|\"\`\'" | tr -d '\\'
#cat input.test | tr -d '\!\@\#\$\%\^\&\*\(\)\_\-\+\=\{\}\[\];\:\\"\`\)\/\>\?\.\,\<\~\|\\' | tr -d "'"
#cat input.test | tr -d '[:punct:]'

rm input.test