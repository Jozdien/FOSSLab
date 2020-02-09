printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that accepts two file names as arguments, checks if the permissions for these files are identical and if the permissions are identical, output common permissions and otherwise output each file name followed by its permissions."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

dir1=$1
dir2=$2

[ -w $dir1 ] && W1="Write = Yes" || W1="Write = No"
[ -x $dir1 ] && X1="Execute = Yes" || X1="Execute = No"
[ -r $dir1 ] && R1="Read = Yes" || R1="Read = No"

[ -w $dir2 ] && W2="Write = Yes" || W2="Write = No"
[ -x $dir2 ] && X2="Execute = Yes" || X2="Execute = No"
[ -r $dir2 ] && R2="Read = Yes" || R2="Read = No"

if [ "$W1" == "$W2" ] && [ "$X1" == "$X2" ] && [ "$R1" == "$R2" ]
then 
    echo "Common Permissions: Write, Execute, Read"
else
	echo "$dir1 Permissions: "
	echo "Write: $W1"
	echo "Execute: $X1"
	echo "Read: $R1"
	echo ""
	echo "$dir2 Permissions: "
	echo "Write: $W2"
	echo "Execute: $X2"
	echo "Read: $R2"
fi 