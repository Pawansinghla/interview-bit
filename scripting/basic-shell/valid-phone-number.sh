#!/usr/bin/env bash

## Valid phone number ##
# Given a text file input that contains list of phone numbers (one per line).
#
# Write a bash script to print all valid phone numbers.You may assume that a valid phone number must appear in one of the following two formats:
#
# 1. (xxx) xxx-xxxx
# 2. xxx-xxx-xxxx
# You may also assume each line in the text file must not contain leading or trailing white spaces.
#
# Sample Input
#
#   987-123-4567
#   123 456 7890
#   (123) 456-7890
# Sample output
#
#   987-123-4567
#   (123) 456-7890

if [ -f "input.test" ]; then
    rm input.test
fi

echo "987-123-4567" >> input.test
echo "987-123-4567-" >> input.test
echo "-987-123-4567" >> input.test
echo "123 456 7890" >> input.test
echo "(123) 456-7890" >> input.test
echo "(123)-456-7890" >> input.test

cat input.test | grep -Eo "^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$"

# seems that character class for digits does not work
#cat input | grep -Eo "(\(\d{3}\) |\d{3}-)\d{3}-\d{4}"

rm input.test