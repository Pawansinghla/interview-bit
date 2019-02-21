Loops In Unix With Example
Loops allow us to take a series of commands and keep re-running them until a particular situation is reached. They are useful for automating repetitive tasks.

For loop:
for i in {5..10};
do
	echo $i;
done
While loop:
i=1
while [ $i -le 20 ]
do
	echo "$i"
	i=$(($i+1))
done