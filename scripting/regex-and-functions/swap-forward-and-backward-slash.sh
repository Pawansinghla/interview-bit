#!/usr/bin/env bash

# Write a bash script to replace all the occurrences of / with \ and \ with / in a text file named input.
#
# For simplicity sake, you may assume:
#
# input contains only either forward slash / or backward slash \
# Example:
#
# Assume that input has the following content:
#
#   \\//
# Your script should output the following:
#
#   //\\



if [ -f "input.test" ]; then
    rm input.test
fi

echo "\\//" >> input.test

cat input.test | sed -e 's:\\:#:g' -e 's:/:\\:g' -e 's:#:/:g'
#cat input.test | tr '/\\' '\\/'

# Note: tr command replaces symbols from one set by another in the order in which they are given
# so you can use it as cesar cipher
echo "dima" | tr 'abcde' 'hijklm'

# Note: In sed you can use alternate separator (I use semicolon in example above)
#
# sed 's/BRE/replacement/flags'
# sed 's~BRE~replacement~flags' valid too
#
# Any character other than backslash or newline can be used instead of a slash to delimit the BRE and the replacement.
# Within the BRE and the replacement, the BRE delimiter itself can be used as a literal character
# if it is preceded by a backslash.

rm input.test

# Note: In regexp patterns it is possible to use numeric references to the capturing groups
# For example \1 matches the results of the first capture group
echo "hah dad bad dab gag gab hoho" | grep -Eo "(\w)(a)\1"