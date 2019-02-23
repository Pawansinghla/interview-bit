##Functions
Functions are a small chunk of code which you may call multiple times within your script. They are particularly useful if you have certain tasks which need to be performed several times.

Bash function:
```bash
greet() {
    echo Hello $1
}
```
Invoking the function:
```bash
greet A
greet B
```
Output:
```
Hello A
Hello B
```