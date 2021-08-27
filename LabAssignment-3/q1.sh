

# Write a shell script to combine any three text files into a single file (append them in the order as they appear in the arguments) and display the word count.


# Passing the file names as arguments while rinning the script
file1=$1
file2=$2
file3=$3
output="outputput.$$"
count=0


# $# is a special variable in bash that expands to the number of arguments passed to the script
# -ne is not equal
#so here we are checking if the user passed 3 file arguments while running the file
if [ $# -ne 3 ]
then
	echo "$(basename $0) file1 file2 file3"
	exit 1
fi
#  -f is a command to check if a given variable is a file
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
 
#cat is the command for concatenation
cat $file1 $file2 $file3 >> $output

# wc i.e word count, It is used to find out number of lines, word count, byte and characters count in the files specified in the file arguments.
# -w is an option to print the word count,similarly there is an option to count lines using -l.
count=$(cat $output | wc -w)
echo "$count words written to $output"
