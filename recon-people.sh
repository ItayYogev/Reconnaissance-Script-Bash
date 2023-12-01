#!/bin/bash
clear

echo
echo
# enter first name
echo -n "enter your first name: "
read FirstName

# check for no response
if [ -z $FirstName ]; then
	echo
	echo "you didnt enter first name"
	exit
 fi

# enter last name
echo
echo -n "enter your last name: "
read LastName

# check for no response
if [ -z $LastName ]; then
	echo
	echo "you didnt enter last name"
	exit
fi

# starting recon
echo
echo "starting recon on $FirstName $LastName:"
sleep 2

firefox &
sleep 3
firefox -new-tab https://www.411.com/person-search/$FirstName-$LastName &
sleep 3
firefox -q -new-tab https://www.addresses.com/people/$FirstName+$LastName/ &
sleep 1
firefox -q -new-tab https://www.spokeo.com/$FirstName-$LastName &
sleep 1
firefox -q -new-tab https://www.zabasearch.com/people/$FirstName+$LastName/ 
