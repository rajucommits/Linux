#!/bin/bash

#code to check whether user is passing 3 arguments or not
if [[ $# != 3 ]]
then
	echo -e "please provide 3 arguments like\nbash $0 10 20 +"
	echo "if multiplication provide '\*' instead of *"
	exit 20
fi

a=$1
b=$2
opr=$3

case $opr in
"+") echo "sum of $a and $b is $((a+b))";;
"-") echo "subtraction of $a and $b is $((a-b))";;
"*") echo "multiplication of $a and $b is $((a*b))";;
"/") echo "division of $a and $b is $((a/b))";;
"%") echo "modulo of $a and $b is $((a%b))";;
*) echo -e "please provide valid arithmetic operator";;
esac
