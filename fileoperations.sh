#!/bin/bash

#Getting the data from myfile.txt to myoutput variable
myoutput=$(cat myfile.txt)

#Displaying all the data from variable myoutput
echo "Total line in variable myoutput is "
echo $myoutput

#Using for loop and displaying individual elements from myoutput
for i in $myoutput
do
	echo "This is with variable, $i"
done

#we can also parse the information directly without variable
for i in $(cat myfile.txt)
do
        echo "This is without variable, $i"
done

