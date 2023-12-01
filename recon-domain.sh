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

# starting recon
echo
echo "starting recon on $Domain:"
sleep 2

firefox &
sleep 3
firefox -new-tab https://intodns.com/$Domain &
sleep 1
firefox -new-tab  https://mxtoolbox.com/SuperTool.aspx?action=dns%3a$Domain&run=toolpage &
sleep 1
firefox -new-tab https://viewdns.info/reverseip/?host=$Domain&t=1 &
sleep 1
firefox -new-tab https://viewdns.info/dnsreport/?domain=$Domain
