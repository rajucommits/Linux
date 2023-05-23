#!/bin/bash

#using select we can select the choice
#we are using backslash before * because * represents everything in the system so we are using escape character
select i in + - \* / %
do
	read -p "enter 1st number: " a
	read -p "enter 2nd number: " b

	#Syntax for case
	case $i in
	"+") echo "sum of $a and $b is $((a+b))";;
	"-") echo "subtraction of $a and $b is $((a-b))";;
	"*") echo "multiplication of $a and $b is $((a*b))";;
	"/") echo "division of $a and $b is $((a/b))";;
	"%") echo "modulo of $a and $b is $((a%b))";;
	#This line says that if we input anything other than the operators specified above then it wont be taken as valid
	*) echo -e "please provide correct operator like\n[+,-,/,*,%]";
	#In order to say that this execution is fail if user is giving anything other than mentioned operators, we are giving exit and a non-=zero value and this non-zero value can be anything 
	#If we have more than one statement under something then the above statement ends with one ; and the last statement ends with ;;
		exit 20;;
	#case should end with reverse of case
	esac
done
