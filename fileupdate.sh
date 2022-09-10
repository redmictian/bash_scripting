#!/bin/bash
path_var=$1
filename_var=$2
backupname_var=$filename_var-$(date +%Y%m%d)-bkp

[[ -f $path_var/$filename_var ]] && echo "The path to the old file is\n$(ls -lah $path_var/$filename_var)" || { echo "File to change can't be found" ; exit 1 ; }
[[ -f ./$filename_var ]] && echo "The new file is\n $(ls -lah $filename_var)" || { echo "The new file can't be found" ; exit 1 ; }

read -p "Proceed?" yn
case $yn in 
	Yes | yes | y | Y ) echo ok, we will proceed;
		break;;
	No | no | n | N ) echo exiting...;
		exit;;
	* ) echo invalid response;
	exit;;
esac
echo "0. Proceeding"

echo "1. Creating a backup"
sudo cp $path_var/$filename_var $backupname_var && { echo "Backup created"; ls -lah $backupname_var ; } || { echo "Backup failed" ; exit 1 ; }

echo "2. Changing permissions"
sudo chmod --reference=$path_var/$filename_var $filename_var && { sudo chown --reference=$path_var/$filename_var $filename_var ; echo "Done" ; ls -lah $filename_var ; }

echo "3. Replacing an old file with the new"
sudo mv $filename_var $path_var && ls -lah $path_var/$filename_var ; echo "Finished"