#!/bin/bash

#sum of numbers
a=20
b=30
#here -e will help to sync the \n 
echo -e "variable a is $a \nvariable b is $b \nsum of numbers is $((a+b))"

#if condition with input variables
read -p "Enter x value:" x
read -p "Enter y value:" y

if ((x > y))
then
	echo "$x is big"
elif ((x==y))
then
	echo "both are same"
else
	echo "$y is big"
fi

#for loop
for i in {1..5}
do
	echo "for loop, i is $i"
done

#while loop
j=1

while (( j <= 5))
do
	echo "while loop, j is $j"
	((j=j+1))
done

#if we want to check whether a particular file exists or not in a particular path then
if [[ -f /tmp/batch1.txt ]]
then
	echo "file exists"
else
	echo "file not exist"
fi


# if we want to check whether a particular directory exists or not then
if [[ -d /tmp/batch1 ]]
then
	echo "directory exists"
else
	echo "directory not exist"
fi
