

# Write a shell script to combine any three text files into a single file (append them in the order as they appear in the arguments) and display the word count.


file1=$1
file2=$2
file3=$3
output="outputput.$$"
count=0
 
if [ $# -ne 3 ]
then
	echo "$(basename $0) file1 file2 file3"
	exit 1
fi
 
if [ ! -f $file1 ] 
then
	echo "$file1 not a file!"
	exit 2
fi
 
if [ ! -f $file2 ] 
then
	echo "$file2 not a file!"
	exit 3
fi
 
if [ ! -f $file3 ] 
then
	echo "$file3 not a file!"
	exit 4 
fi
 
cat $file1 $file2 $file3 >> $output
count=$(cat $output | wc -w)
echo "$count words written to $output"