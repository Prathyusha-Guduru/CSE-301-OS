file=$1
v=0
if [ $# -ne 1 ]
then
	echo "$0 fileName"
	exit 1
fi
if [ ! -f $file ]
then
	echo "$file not a file"
	exit 2
fi
exec 3<&0
while read -n 1 c
do 
  l="$(echo $c | tr '[A-Z]' '[a-z]')"
  [ "$l" == "a" -o "$l" == "e" -o "$l" == "i" -o "$l" == "o" -o "$l" == "u" ] && (( v++ )) || :
done < $file
echo "Vowels : $v"
echo "Characters : $(cat $file | wc -c)"
echo "Blank lines : $(grep  -c '^$' $file)"
echo "Lines : $(cat $file|wc -l )"