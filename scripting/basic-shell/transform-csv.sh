#!/usr/bin/env bash

## Transform CSV ##
# Given a csv file(with , as a delimiter) named input with the following fields:
#
#   FirstName
#   LastName
#   Address
#   City
#   CountryCode
#   Email
#   PhoneNumber
# Write a bash script to combine both CountryCode and PhoneNumber with a - and add a + before country code and remove country codes from the csv file
#
# Example:
#
# Assume that input has the following content:
#
#   Lotty,Kilner,08 Boyd Place,Jiangqiao,04,lkilner0@epa.gov,433-447-7966
#   Benoite,Ducket,9 Harper Alley,Tenenkou,22,bducket1@friendfeed.com,724-995-7769
#
# Your script should output the following:
#
#   Lotty,Kilner,08 Boyd Place,Jiangqiao,lkilner0@epa.gov,+04-433-447-7966
#   Benoite,Ducket,9 Harper Alley,Tenenkou,bducket1@friendfeed.com,+22-724-995-7769
# Note:
#
# Given csv file does not contain headers i.e., only data is present.

if [ -f "input.test" ]; then
    rm input.test
fi

echo "Lotty,Kilner,08 Boyd Place,Jiangqiao,04,lkilner0@epa.gov,433-447-7966" >> input.test
echo "Benoite,Ducket,9 Harper Alley,Tenenkou,22,bducket1@friendfeed.com,724-995-7769" >> input.test

while IFS=',' read -r f1 f2 f3 f4 f5 f6 f7
do
    echo "$f1,$f2,$f3,$f4,$f6,+$f5-$f7"
done < input.test

rm input.test