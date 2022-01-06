#!/bin/bash
echo 'Enter the names of folder'
read name
[[ ! -d $name ]] && mkdir $name || { echo "are you that dumb nig?" && exit; }
for (( c=0; c<=3; c++ ))
do  
   touch $name/$name.$c
   echo "killaz is" > $name/$name.$c
   cat $name/$name.$c
done
ls $name
rm -rf $name && echo 'Goodbye'
