# Write a shell script which reads the contents in a text file and removes all the blank spaces in them
# and redirects the output to a file.

out="output.txt"
read -p "Enter the filename "  FILENAME
 
if [ ! -f $FILENAME ]
then
	echo "$FILENAME not a file!"
	exit 1
fi
 
sed -e 's/[\t ]//g;/^$/d' $FILENAME > $out
echo "Output written to $out file"