##Shell Scripting Introduction And Example
A bash (or shell) script is basically a program that allows the user to interact with the UNIX/Linux system by writing executable shell commands in a simple text file.

A bash script which greets the user (save in `greet.sh` and run like bash greet.sh):
```bash
echo "hello $USER"
```
A bash script which takes a string as input and greets (saved as `hello.sh`) :
```bash
echo "hello $1" # $1 is the first argument given to the script
```
Output:
```
hello interviewbit # Run like this: bash hello.sh interviewbit. 'interviewbit' is first argument 
```
Our own version of `wc` which is more readable (saved as `mywc.sh`) :
```bash
wc_output=`wc /usr/share/dict/words | tr -s ' '` # You can save output of a command in a variable
bytes=`echo $wc_output | cut -d ' ' -f 1` # You can then use variable to extract more useful information
lines=`echo $wc_output | cut -d ' ' -f 2`
words=`echo $wc_output | cut -d ' ' -f 3`
filename=`echo $wc_output | cut -d ' ' -f 4`

echo "Filename: $filename"
echo "Bytes in the file: $bytes"
echo "Lines in the file: $lines"
echo "Words in the file: $words"
```
Output (Run as bash `mywc.sh`):
```
Filename: /usr/share/dict/words
Bytes in the file: 235886
Lines in the file: 235886
Words in the file: 2493109
```
