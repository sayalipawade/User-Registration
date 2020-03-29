#!/bin/bash -x
echo "welcome"

#constants
VALIDPATTERN="^[A-Z][a-z]{2,}$"
VALIDEMAILPATTERN="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"
VALIDMOBILENO="^((\+){1}91){1}[1-9]{1}[0-9]{9}$"
VALIDPASSWORD="^[a-zA-Z]{8,}$"

function patternMatching()
{
   if [[ $1 =~ $2 ]]
   then
      echo "Valid"
   else
      echo "Not Valid"
   fi
}

#checking pattern for first name
read -p "Enter first name:" firstName
patternMatching $firstName $VALIDPATTERN

#checking pattern for last name
read -p "Enter last name:" lastName
patternMatching $lastName $VALIDPATTERN

#checking pattern for email
read -p "Enter email Id:" email 
patternMatching $email $VALIDEMAILPATTERN

#checking pattern for mobile format
read -p "Enter Mobile No:" mobile
patternMatching $mobile $VALIDMOBILENO

#checking pattern for password
read -p "Enter password:" password
patternMatching $password $VALIDPASSWORD


