#!/usr/bin/env bash

## Valid Email Address ##
# Write a bash script that finds all the invalid email addresses.
#
# For simplicity, assume that a vaild email addresses has the following rules-
#
# Email should be of the form local@domain.com
# There can only be alphanumberic characters in the local part email address.
# The following characters are valid in the local part of the email as long as they are not the first character.
#-, _, +, .
#
# Email address can not start with a number.
# Domain name can only contain alphanumeric characters and -.
# com part can have atmost one ., for e.g. co.uk or co.in is valid but as.df.gh is invalid
#Example:
#
# Assume that input has the following content:
#
#    abc@example.co.uk
#    abc@example.com
#    abc<>@example.com
#    abc@example@gmail.com
# Your script should output the following:
#
#    abc<>@example.com
#    abc@example@gmail.com

if [ -f "input.test" ]; then
    rm input.test
fi

echo "email@example.com" >> input.test
echo "firstname.lastname@example.com" >> input.test
echo "email@subdomain.example.com" >> input.test
echo "firstname+lastname@example.com" >> input.test
echo "email@123.123.123.123" >> input.test
echo "email@[123.123.123.123]" >> input.test
echo '"email"@example.com' >> input.test
echo "1234567890@example.com" >> input.test
echo "email@example-one.com" >> input.test
echo "_______@example.com" >> input.test
echo "email@example.name" >> input.test
echo "email@example.museum" >> input.test
echo "email@example.co.jp" >> input.test
echo "firstname-lastname@example.com" >> input.test
echo 'much."more\ unusual"@example.co' >> input.test
echo 'very.unusual."@".unusual.com@example.com' >> input.test
echo 'very."(),:;<>[]".VERY."very@\\ "very".unusual@strange.example.com' >> input.test
echo "plainaddress" >> input.test
echo '#@%^%#$@#$@#.com' >> input.test
echo "@example.com" >> input.test
echo "Joe Smith <email@example.com>" >> input.test
echo "email.example.com" >> input.test
echo "email@example@example.com" >> input.test
echo ".email@example.com" >> input.test
echo "email.@example.com" >> input.test
echo "email..email@example.com" >> input.test
echo "zsdscx@example.com" >> input.test
echo "email@example.com (Joe Smith)" >> input.test
echo "email@example" >> input.test
echo "email@-example.com" >> input.test
echo "email@example.web" >> input.test
echo "email@111.222.333.44444" >> input.test
echo "email@example..com" >> input.test
echo "Abc..123@example.com" >> input.test
echo '"(),:;<>[\]@example.com' >> input.test
echo 'just"not"right@example.com' >> input.test
echo 'this\ is"really"not\allowed@example.com' >> input.test

cat input.test | grep -Ev "(^[^0-9_+-.][A-Za-z0-9_+-.]+)@{1}([A-Za-z0-9.-]+)(\.[A-Za-z]+){1,2}$"

# It is possible to use grep -Exv and do not use $ at the end of the regexp
#    -x
#   --line-regexp
#       Select only those matches that exactly match the whole line.
#   -v
#   --invert-match
#       Invert the sense of matching, to select non-matching lines.
#   -w
#   --word-regexp
#       Select only those lines containing matches that form whole words.
#       The test is that the matching substring must either be at the beginning of
#       the line, or preceded by a non-word constituent character. Similarly, it
#       must be either at the end of the line or followed by a non-word constituent
#       character. Word-constituent characters are letters, digits, and the underscore.

rm input.test

# Expected output:
#    email@123.123.123.123
#    email@[123.123.123.123]
#    "email"@example.com
#    1234567890@example.com
#    _______@example.com
#    much."more\ unusual"@example.com
#    very.unusual."@".unusual.com@example.com
#    very."(),:;<>[]".VERY."very@\\ "very".unusual@strange.example.com
#    plainaddress
#    #@%^%#$@#$@#.com
#    @example.com
#    Joe Smith <email@example.com>
#    email.example.com
#    email@example@example.com
#    .email@example.com
#    email@example.com (Joe Smith)
#    email@example
#    email@111.222.333.44444
#    "(),:;<>[\]@example.com
#    just"not"right@example.com
#    this\ is"really"not\allowed@example.com