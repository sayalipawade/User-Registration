#!/bin/bash -x
echo "welcome"

#constants
VALIDPATTERN="^[A-Z][a-z]{2,}$"

read -p "Enter last name:" lastName

if [[ $lastName =~ $VALIDPATTERN ]]
then
	echo "Valid last name"
else
	echo "Not valid last name"
fi

