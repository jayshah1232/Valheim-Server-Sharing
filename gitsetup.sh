#!/bin/bash


read -p "Please insert repo url: " repoUrl

echo $repoUrl

create_repo () {
	git init
	git remote add origin $repoUrl.git
}

repo_link () {
	create_repo
	echo "Repo created and linked"
	echo "Run gitpull right now? Y or N"
	read input2
	input2TR=$(echo $input2 | tr [:lower:] [:upper:])
	if [[ $input2TR -eq 'Y' ]]
	then
		gitpull.sh
		echo "Exiting"
		sleep 3s
	else
		echo "Exiting"
		sleep 3s
	fi
}

if [ -d .git ]
then
	echo "Local git repo already initialized"
	url=`git config --get remote.origin.url`
	echo "Connected to $url"
	if [ $url != $repoUrl ]
	then
		echo "Would you like to delete the $url repo and connect to $repoUrl?"
		echo "Y or N"
		echo "NOTE: THIS IS NOT REVERSIBLE. PRESS 'N' IF YOU DO NOT KNOW WHAT YOU'RE DOING"
		read input
		inputTR=$(echo $input | tr [:lower:] [:upper:])
		if [[ $inputTR -eq 'Y' ]]
		then
			rmdir -r .git
			create_repo
			repo_link
		else
			echo "Exiting"
			sleep 3s
		fi
	else
		echo "Already connected to $repoUrl"
		echo "No further setup required"
	fi
else
	create_repo
	repo_link
fi
