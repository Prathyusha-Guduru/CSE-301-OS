start=$HOME
[ $# -eq 1 ] && start=$1 || :
if [ ! -d $start ] 
then
	echo "$start not a directory!"
	exit 1
fi
DIRS=$(find "$start" -type d)
for d in $DIRS
do
   [ "$d" != "." -a "$d" != ".." ] &&  echo "$d dirctory has $(ls -l $d | wc -l) files" || :
done