#!/bin/bash


if [ -d .git ]
then
	echo "Connected to `git config --get remote.origin.url`"
else
	echo "Not connected to any git repo. Set up the repo first"
	echo "Press any key to exit"
	read junk
	exit 1
fi

echo "Enter your name: "

read name

currentDate=`date`

git add .

git status

echo "Is the status correct? Y or N"
read input
inputTR=$(echo $input | tr [:lower:] [:upper:])

if [[ $inputTR == 'Y' ]]
then
	git commit -m "($currentDate) - ($name)"
	git push origin master
else
	echo "Exiting"
	sleep 3s
	exit 0
fi

echo "Push completed"
echo "Press any key to exit"
read junk2
exit 0
