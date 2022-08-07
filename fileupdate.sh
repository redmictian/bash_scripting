#!/bin/bash
echo 'path'
read path_var
echo 'file name'
read filename_var

[[ -f $path_var/$filename_var ]] && echo "The path to the old file is $(ls -lah $path_var/$filename_var)" || echo "File to change can't be found $(exit)"
[[ -f ./$filename_var ]] && echo "The new file is $(ls -lah $filename_var)" || echo "The new file can't be found $(exit)"

read -p "Proceed?" yn
case $yn in 
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
echo "Proceeding"

echo "Creating a backup"
backupname_var=$filename_var-$(date +%Y%m%d)-bkp
cp $path_var/$filename_var $filename_var-$(date +%Y%m%d-%H:%M)-bkp && echo "Backup created" && ls -lah $backupname_var || echo "Backup failed $(exit)"

echo "Changing permissions"
sudo chmod --reference=$path_var/$filename_var $filename_var && sudo chown --reference=$path_var/$filename_var $filename_var && echo "Done" && ls -lah $filename_var

echo "Replacing an old file with the new"
sudo mv $filename_var $path_var && ls -lah $path_var/$filename_var && echo "Finished"