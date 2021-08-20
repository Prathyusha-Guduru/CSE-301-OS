echo -n "Enter a file name : "
read file
a=0
the=0
an=0
if  [ ! -f $file ]
then
	echo "$file not a file!"
	exit 1
fi
while read line
do
	for w in $line 
	do
		lword="$(echo $w | tr '[A-Z]' '[a-z]')"
		[ $lword = "a" ] && (( a++ )) || :
		[ $lword = "the" ] && (( the++ )) || :
		[ $lword = "an" ] && (( an++ )) || :
	done
done < $file
echo "a article occured $a times"
echo "the article occured $the times"
echo "an article occured $an times"