#!/usr/bin/env bash

# In the given file named input, find the frequency of all the words and print as per the following format.
#
# The first column of each line of the output should be the frequency of the word followed
# by all the words of that frequency arranged in lexicographical order separated with space “ ”
#
# Sort the words in the ascending order of frequency.
#
# For simplicity, assume that
#
# Words are case sensitive, i.e. The and the are treated as different words.
#
# Example:
#
# Assume that input has following content:
#
#    the day is sunny
#    it is the sunny day
#    we can go out
# Your script should output the following, sorted by the ascending frequency:
#
#    1 can go it out we
#    2 day is sunny the

if [ -f "input.test" ]; then
    rm input.test
fi

echo "the day is sunny" >> input.test
echo "it is the sunny day" >> input.test
echo "we can go out" >> input.test

cat input.test | xargs -n1 | sort | uniq -c | sort -n | tr -s '[:space:]' | awk -F' ' '$1==last {printf " %s",$2; next} NR>1 {print "";} {last=$1; printf "%s",$0;} END{print "";}' | sed "s/^[ \t]*//"
#cat input.test | tr -s ' ' '\n' | sort | uniq -c | sort | tr -s '[:space:]' | awk -F' ' '$1==last {printf " %s",$2; next} NR>1 {print "";} {last=$1; printf "%s",$0;} END{print "";}' | sed "s/^[ \t]*//"

rm input.test