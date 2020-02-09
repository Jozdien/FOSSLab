printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that displays a special listing showing the permissions, size filename and last modification time of filename supplied as arguments. Provide suitable headers using the printf command."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

echo -n "Enter the name of the file : "
read fileName

if [ ! -f $fileName ]
then
 echo "$fileName not a file"
 exit 1
fi
[ -w $fileName ] && W="Write = Yes" || W="Write = No"
[ -x $fileName ] && X="Execute = Yes" || X="Execute = No"
[ -r $fileName ] && R="Read = Yes" || R="Read = No"

echo "$fileName permissions:"
echo "$W"
echo "$R"
echo "$X"
echo "Size of $fileName is: $(stat -c%s $fileName)"
echo "$fileName was last modified on $(stat -c %x $fileName)"