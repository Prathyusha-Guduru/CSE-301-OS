echo "enter first file name"
read file1
echo "enter second file name"
read file2
echo "enter third file name"
read file3
echo "Enter contains to $file1"
cat > $file1
echo "Enter contains to $file2"
cat > $file2
echo "Display difference between $file1 and $file2 copy to $file3"
diff $file1 $file2 > $file3
cat $file3