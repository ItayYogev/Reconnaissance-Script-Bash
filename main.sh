#!/bin/bash
clear
echo

echo "__________                                                         .__        __   "
echo "\______   \ ____   ____  ____   ____             ______ ___________|__|______/  |_ "
echo " |       _// __ \_/ ___\/  _ \ /    \   ______  /  ___// ___\_  __ \  \____ \   __ "
echo " |    |   \  ___/\  \__(  <_> )   |  \ /_____/  \___ \\  \___|  | \/  |  |_> >  |  "
echo " |____|_  /\___  >\___  >____/|___|  /         /____  >\___  >__|  |__|   __/|__|  "
echo "        \/     \/     \/           \/               \/     \/         |__|          "
sleep 2

echo "by Itay Yogev"
sleep 2

echo
echo
echo "Chooce your prefered option:"
echo
echo "1. recon people"
echo "2. recon domain"
echo "3. open a domain's robot.txt in firefox"
echo
echo
echo -n "Choice: "
read choice

echo $choice

case $choice in
	1) ./recon-people.sh;;
	2) ./recon-domain.sh;;
	3) ./robots.sh;;
	*) echo "you have entered a wrong choice."
esac
