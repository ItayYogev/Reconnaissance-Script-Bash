#!/bin/bash
clear
echo

# enter domain
echo -n "enter a domain: "
read Domain

# check for no response
if [ -z $Domain ]; then
	echo
	echo "you didnt enter a domain"
	exit
 fi

# starting robots.txt
echo
echo "starting robots.txt: "
wget -q $Domain/robots.txt
cat robots.txt | grep 'Disallow' | cut -d ' ' -f2 > robots_results
echo
echo "All the results are saved in in $(realpath robots_results)"
sleep 1
echo
echo
read -p "press ENTER to open the robots.txt results in firefox: "

firefox &
sleep 3

# read a list and open each line in a new tab
for i in $(cat robots_results); do
	firefox -new-tab http://www.$Domain$i &
	sleep 1
done


