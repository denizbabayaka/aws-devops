#!/bin/bash
read -p "Enter user name: " username
grep "$username:" /etc/passwd >> /dev/null
if [[ $? -ne 0 ]]
then
	useradd $username
else
	echo "$username already exist"
	exit 1
    pwd
fi
read -p "Enter user description: " desc
usermod -c $desc $username
echo "success"
read -p "Enter a group name: " groupname
grep "$groupname:" /etc/group
if [[ $? -eq 0 ]]
then
	gpasswd -a $username $groupname
	echo "added"
else
	echo "There is no group named $groupname"
	groupadd $groupname
	echo "Group $groupname is created"
	gpasswd -a $username $groupname
	exit 1
fi