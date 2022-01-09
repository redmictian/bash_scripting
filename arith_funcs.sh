add () {
	echo "adding"
}
subtract () {
	echo "subtracting"
}
multiply () {
	echo "Multiplying"
}
divide () {
	echo "dividing"
}
read -p "Choose what needs to be done: 1 - adding, 2 - subtracting, 3 - multiplying, 4 - dividing" oper
if [ $oper -eq 1 ]
then
	add()
