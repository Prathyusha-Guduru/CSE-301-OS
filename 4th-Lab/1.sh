echo “Enter a file name”
read file1
echo “Enter contains in $file1”
cat > $file1
echo “Enter existing file name”
read file2
echo “Display copy of contains $file1 to $file2”
cp $file1 $file2
cat $file2
