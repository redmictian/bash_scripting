if [ ! $# -eq 0 ] 
then
	echo "The value is $1"
else
	echo "the value wasn't passed in"
fi
exit $#
