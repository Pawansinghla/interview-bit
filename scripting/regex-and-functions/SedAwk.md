#####Sed
Sed is a powerful text stream editor which can do insertion, deletion, search and replace.

Input:

>cat
caat
caaat
caaaat
caaaaat
Replace consecutive multiple ***a*** with single ***a***
sed 's/a\{2,\}/a/g' cats.txt
Output:

cat
cat
cat
cat
cat
Awk
Awk searches files for text containing a pattern and performs a specific action on that line/text.

Input:

A,20,30
B,10,5
C,25,40
D,40,10
Calculate total of the students
awk -F, 'BEGIN {printf "name \t sub1 \t sub2 \t total\n"} {printf "%s \t %s \t %s \t %s\n", $1, $2, $3,$2+$3}' marks.txt 
Output

name 	 sub1 	 sub2 	 total
A 	 20 	 30 	 50
B 	 10 	 5 	 15
C 	 25 	 40 	 65
D 	 40 	 10 	 50