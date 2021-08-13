echo Hello, Enter the string?
read string
len=`expr length "$string"`

if [[ $len -gt 5 ]]
then
echo "Successs"
else
echo "Failure"
fi 






