#!/bin/bash -x
echo "welcome"


VALIDPATTERN="^[A-Z][a-z]{2,}$"
VALIDEMAILPATTERN="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"

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


