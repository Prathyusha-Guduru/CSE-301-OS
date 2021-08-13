read -p "Enter the filename "  FILENAME

if [ -f "$FILENAME" ] 
	then
		echo "File exists"
		 grep -c -i "lorem" "$FILENAME" 
	else
		echo "File does not exist"
fi


