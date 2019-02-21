Head, Tail And Tr Command In Unix With Example
Head and Tail
Head and tail are used to print n top or bottom lines respectively.

Get lines from 345 to 360
cat /usr/share/dict/words | head -360 | tail -15 
Tr
Replacing or removing specific characters from the input.

Input:

School	Phone
Happy Valley Elementary School	814-555-1212
Happy Valley High School	814-555-1212
Happy Valley Middle School	814-555-1212
Happy Valley School District	814-555-1212
Reverse the case
cat data.csv | tr '[a-z][A-Z]' '[A-Z][a-z]'
Output:

sCHOOL	pHONE
hAPPY vALLEY eLEMENTARY sCHOOL	814-555-1212
hAPPY vALLEY hIGH sCHOOL	814-555-1212
hAPPY vALLEY mIDDLE sCHOOL	814-555-1212
hAPPY vALLEY sCHOOL dISTRICT	814-555-1212
Replace each digit with x
cat data.csv | tr '[0-9]' 'x'
Output:

School	Phone
Happy Valley Elementary School	xxx-xxx-xxxx
Happy Valley High School	xxx-xxx-xxxx
Happy Valley Middle School	xxx-xxx-xxxx
Happy Valley School District	xxx-xxx-xxxx
Remove consecutive duplicate alphanumerics using -s (squash) flag
cat data.csv | tr -s '[0-9A-Za-z]'
Output:

Schol	Phone
Hapy Valey Elementary Schol	814-5-1212
Hapy Valey High Schol	814-5-1212
Hapy Valey Midle Schol	814-5-1212
Hapy Valey Schol District	814-5-1212
Remove all digits using -d (delete) flag
cat data.csv | tr -d '[0-9]'
Output:

School	Phone
Happy Valley Elementary School	--
Happy Valley High School	--
Happy Valley Middle School	--
Happy Valley School District	--