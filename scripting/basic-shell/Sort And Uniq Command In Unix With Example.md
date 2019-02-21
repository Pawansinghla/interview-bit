Sort And Uniq Command In Unix With Example
Sort
Input:

     1	denationalise
     2	gingal
     3	bladdery
     4	asepticism
     5	cringing
     6	chalutzim
     7	fanner
     8	jubbulpore
     9	eidolon
    10 overhasty
Sorting alphabetically ( Flag -k used to select a field for sorting)
cat words.txt | sort -k 2
Output:

     4	asepticism
     3	bladdery
     6	chalutzim
     5	cringing
     1	denationalise
     9	eidolon
     7	fanner
     2	gingal
     8	jubbulpore
    10	overhasty
Uniq
Filter out repeated lines in a file.

Input:

1
2
2
3
3
3
4
4
4
4
5
5
5
5
5
Select unique lines
cat nums.txt | uniq
Output:

1
2
3
4
5

Select unique lines along with their count using -c (count) flag
cat nums.txt | uniq -c
Output:

   1 1
   2 2
   3 3
   4 4
   5 5