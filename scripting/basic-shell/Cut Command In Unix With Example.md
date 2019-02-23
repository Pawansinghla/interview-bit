##Cut Command In Unix With Example
Cut is used to select sections of text from each line of files.

Input:
```
System ID,School,Phone,Address,City,State,Zip,Type,Principal
569,Happy Valley Elementary School,814-555-1212,332 Innovation Boulevard,State College,PA,16801,Elementary,Mr. Jenkins
570,Happy Valley High School,814-555-1212,328 Innovation Boulevard,State College,PA,16801,High School,Mr. Eric Sparks
571,Happy Valley Middle School,814-555-1212,330 Innovation Boulevard,State College,PA,16801,Middle School,Mrs. Spegle
572,Happy Valley School District,814-555-1212,334 Innovation Boulevard,State College,PA,16801,District Building,Mr. Jones
```
***Get 1 to 5 columns***
```bash
cat data.csv | cut -c 1-5
```
Output:
```
Syste
569,H
570,H
571,H
572,H
```
***Set delimiter and get the first field***
```bash
cat data.csv | cut -d ',' -f 1
```
Output:
```
System ID
569
570
571
572
```
