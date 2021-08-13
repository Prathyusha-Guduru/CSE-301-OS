read -p "Enter the filename "  FILENAME

if [ -f "$FILENAME" ] 
	then
		echo "File exists"
	 # grep -i "lorem ipsum" "$FILENAME"
		 grep -o -i lorem "$FILENAME" | wc -l
	else
		echo "File does not exist"
fi


