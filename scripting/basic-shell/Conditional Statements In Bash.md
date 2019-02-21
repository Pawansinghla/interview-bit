Conditional Statements In Bash
if-else statements allow us to make decisions in our Bash scripts. They allow us to decide whether or not to run a piece of code based upon conditions that we may set.

num=5
if [ $num -lt 0 ]; then
    echo "number is negative";
elif [ $num -lt 10 ]; then
    echo "number is less than 10";
else
    echo "number is equal or greater than 10";
fi