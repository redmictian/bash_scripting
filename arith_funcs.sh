add () {
	echo $(($1+$2))
}
subtract () {
	echo $(($1-$2))
}
multiply () {
	echo $(($1*$2))
}
divide () {
	echo $(($1/$2))
}
read -p "Enter the first number " first
read -p "Enter the second number " second
read -p "Choose what needs to be done: a - adding, s - subtracting, m - multiplying, d - dividing " oper
if [ $oper == "a" ]
then
	add $first $second
elif [ $oper == "s" ]
then
	subtract $first $second
elif [ $oper == "m" ]
then
	multiply $first $second
elif [ $oper == "d" ]
then
	divide $frist $second
else
	echo "You have entered something wrong"
	exit 0
fi
echo "Done"
exit 1
