
echo “Enter a file name”
read file1
echo "Enter the number of the line from where you want to print"
read line
echo “Start Printing at $line line “
tail +$line $file1
