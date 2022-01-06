#!/bin/bash
echo 'Enter the names of folder'
read name
[[ ! -d $name ]] && mkdir $name || { echo "Dont do that" && exit; }
for (( c=0; c<=3; c++ ))
do  
   touch $name/$name.$c
   echo "Writing to the files" > $name/$name.$c
   cat $name/$name.$c
done
ls $name
rm -rf $name && echo 'Goodbye'
