## Regex
The main uses for Regular Expressions (REs) are text searches and string manipulation. An RE matches a single character or a set of characters -- a string or a part of a string.

##### ***Regex metacharacters***
```
'.' (dot) - Matches any single character except the newline character (\n).
'*' (star) - Matches zero or more occurrence of the immediately preceding character.
'<' - Matches the beginning of a word
'>' - Matches the ending of a word
'^' - Matches the beginning of a line
'$' - Matches the end of a line
'{m}' - Matches the exactly regex ‘m’
'{m,}' - Matches the at least regex ‘m’
'{m,n}' - Matches the preceding regex ‘m’ to ‘n’ times
```
##### ***Regex Metaclasses:***
```
'[:alnum:]' - Alphanumeric characters; same as [a-zA-Z0-9]
'[:digit:]' - Digits; same as [0-9]
'[:punct:]' - Punctuation characters
```
#####The following regex will match all words end with **ing**:
``
<.*ing\>
``

The following regex will match all words which contain `quu` or `quuu` and such expression:
```
qu{2,}
```
Input:
```
domineering
joke
unite
meeting
test
improve
provide
tease
duck
truthful
striped
glamorous
```
Match all words starting with non-vowel and end with a vowel (Usage with grep).
```bash
cat lite.txt | grep "^[^aeiou].*[aeiou]$" 
```
Output:
```
joke
provide
tease
```