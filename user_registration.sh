#!/bin/bash -x
echo "welcome"

#constants
VALIDPATTERN="^[A-Z][a-z]{2,}$"
VALIDMOBILENO="^((\+){1}91){1}[1-9]{1}[0-9]{9}$"
VALIDPASSWORD="^[A-Z]{1,}*[a-z]{4,}*[0-9]{2,}*[\!\@\#\%\$\&\*\]{1}*$"

EMAILPATTERN1="^[a-zA-Z0-9]{3,}+[@]{1}$"
EMAILPATTERN2="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}$"
EMAILPATTERN3="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"
VALIDEMAILPATTERN="^[a-zA-Z0-9]{3,}+[@][a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"


#checking pattern for first name
read -p "Enter first name:" firstName
if [[ $firstName =~ $VALIDPATTERN ]]
then
	echo "Your first name is valid"
else
	echo "Your first name is not valid"
fi

#checking pattern for last name
read -p "Enter last name:" lastName
if [[ $lastName =~ $VALIDPATTERN ]]
then
	echo "Your last name is valid"
else
	echo "Your last name is not valid"
fi

#checking pattern for email
read -p "Enter email Id:" email 
if [[ $email  =~ $VALIDEMAILPATTERN ]]
then
	echo "Your email is valid"
else
	echo "Your email is not valid"
fi

#checking pattern for mobile format
read -p "Enter Mobile No:" mobile
if [[ $mobile =~  $VALIDMOBILENO ]]
then
	echo "Your mobile no is valid"
else
	echo "Your mobile no is not valid"
fi

#checking pattern for password
read -p "Enter password:" password
if [[ $password =~  $VALIDPASSWORD ]]
then
	echo "Your password is valid"
else
	echo "Your password is not valid"
fi


