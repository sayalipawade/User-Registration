#!/bin/bash -x
echo "welcome"

#constants
VALIDPATTERN="^[A-Z][a-z]{2,}$"

read -p "Enter first name:" firstName

if [[ $firstName =~ $VALIDPATTERN ]]
then
	echo "Valid first name"
else
	echo "Not valid first name"
fi

