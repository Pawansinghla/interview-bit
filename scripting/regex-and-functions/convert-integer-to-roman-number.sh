#!/usr/bin/env bash

# Write a bash script to convert a given integer to its corresponding roman number.
#
# For simplicity sake, you may assume:
#
# input contains only one integer in each line
# Every integer is in the range of [1, 4999] inclusive of 1 and 4999.
# Example:
#
# Assume that input has the following content:
#
#    1
#    2
#    3
#    4
#    5
 #Your script should output the following:
#
#    I
#    II
#    III
#    IV
#    V

if [ -f "input.test" ]; then
    rm input.test
fi

echo "1" >> input.test
echo "2" >> input.test
echo "3" >> input.test
echo "4" >> input.test
echo "5" >> input.test
echo "0" >> input.test
echo "11" >> input.test
echo '400' >> input.test
echo "42" >> input.test
echo "1000" >> input.test
echo "2000" >> input.test
echo "4000" >> input.test
echo "4154" >> input.test
echo "4006" >> input.test
echo "1588" >> input.test
echo "1988" >> input.test

A=(Z I II III IV V VI VII VIII IX)
B=(Z X XX XXX XL L LX LXX LXXX XC)
C=(Z C CC CCC CD D DC DCC DCCC CM)
D=(Z M MM MMM MMMM)

while read -r number
do
    if [[ $number -lt 1 || $number -gt 4999 ]]; then
        echo "Wrong number $number! Your number should be in range [1,4999]"
        continue
    fi
    res=""
    if [ "$number" -ge 1000 ]; then
        thousands=`expr $number / 1000`
        res+="${D[$thousands]}"
    fi
    number=`expr $number % 1000`

    if [ "$number" -ge 100 ]; then
        hundreds=`expr $number / 100`
        res+="${C[$hundreds]}"
    fi
    number=`expr $number % 100`

    if [ "$number" -ge 10 ]; then
        tens=`expr $number / 10`
        res+="${B[$tens]}"
    fi
    number=`expr $number % 10`

    if [ $number -ge 1 ]; then
        res+="${A[$number]}"
    fi
    echo "$res"
done < input.test

## My naive approach ##

#while read -r number
#do
#    if [[ $number -lt 1 || $number -gt 4999 ]]; then
#        echo "Wrong number $number! Your number should be in range [1,4999]"
#        continue
#    fi
#    res=""
#    while [ "$number" -ge  1000 ]; do
#        number=`expr $number - 1000`
#        res+="M"
#    done
#    while [ "$number" -ge  900  ]; do
#        number=`expr $number - 900`
#        res+="DM"
#    done
#    while [ "$number" -ge  500 ]; do
#        number=`expr $number - 500`
#        res+="D"
#    done
#    while [ "$number" -ge  400 ]; do
#        number=`expr $number - 400`
#        res+="CD"
#    done
#    while [ "$number" -ge  100 ]; do
#        number=`expr $number - 100`
#        res+="C"
#    done
#    while [ "$number" -ge  90 ]; do
#        number=`expr $number - 90`
#        res+="XC"
#    done
#    while [ "$number" -ge  50 ]; do
#        number=`expr $number - 50`
#        res+="L"
#    done
#    while [ "$number" -ge  40 ]; do
#        number=`expr $number - 40`
#        res+="XL"
#    done
#    while [ "$number" -ge  10 ]; do
#        number=`expr $number - 10`
#        res+="X"
#    done
#    while [ "$number" -ge  9 ]; do
#        number=`expr $number - 9`
#        res+="IX"
#    done
#    while [ "$number" -ge  5 ]; do
#        number=`expr $number - 5`
#        res+="V"
#    done
#    while [ "$number" -ge  4 ]; do
#        number=`expr $number - 4`
#        res+="IV"
#    done
#    while [ "$number" -ge  1 ]; do
#        number=`expr $number - 1`
#        res+="I"
#    done
#    echo "$res"
#done < input.test

rm input.test