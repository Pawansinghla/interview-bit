##Sort And Uniq Command In Unix With Example
Sort

Input:
```text
1 denationalise
2 gingal
3 bladdery
4 asepticism
5 cringing
6 chalutzim
7 fanner
8 jubbulpore
9 eidolon
10 overhasty
```
Sorting alphabetically ( Flag -k used to select a field for sorting)
```bash
cat words.txt | sort -k 2
```
Output:
```text
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
```
####Uniq
Filter out repeated lines in a file.

Input:
```text
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
```
Select unique lines
```bash
cat nums.txt | uniq
```
Output:
```text
1
2
3
4
5
```
Select unique lines along with their count using **-c** (count) flag
```bash
cat nums.txt | uniq -c
```
Output:
```text
1 1
2 2
3 3
4 4
5 5
```
