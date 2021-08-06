echo Hello, who am I talking to?
read string
len=`expr length "$string"`

if [[ $string -gt 5 ]]
then
  echo "Successs"
else
  echo "Failure"
fi