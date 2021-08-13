echo -n "Enter a filename to see last modification time : "
read fileName
 
# make sure file exits
if [ ! -f $fileName ]
then
	echo "$fileName not a file"
	exit 1
fi
 
# use stat command to display 
echo "$fileName was last modified on $(stat -c %y $fileName)"




