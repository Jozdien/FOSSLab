#Aim:
#1	a 	Write a sed command that deletes the first character in each line in a file
#	b 	Write a sed command that deletes the last character in each line in a file
#	c 	Write a sed command that swaps the first and second words in each line in a file
#2 	a 	Use the who command and redirect the result to a file called myfile1. Use the more
#		command to see the contents of myfile1.
#3 	a 	Write a shell script that takes a command –line argument and reports on whether it
#		is directory, a file, or something else
#	b 	Write a shell script that accepts one or more file name as arguments and converts all
#		of them to uppercase, provided they exist in the current directory
#	c 	Write a shell script that determines the period for which a specified user is working
#		on the system
#4 	a 	Write a shell script that accepts a file name starting and ending line numbers as
#		arguments and displays all the lines between the given line numbers.
#	b 	Write a shell script that deletes all lines containing a specified word in one or more
#		files supplied as arguments to it
#5 	a 	Write a shell script which accepts any number of arguments and prints them in the
#		reverse order (Output:
#		sh 1prg.sh a b c
#		No of arguments arguments are 3
#		Arguments in reverse order c b a)
#	b 	Write a shell script that accepts two file names as arguments, checks if the
#		permissions for these files are identical and if the permissions are identical, output
#		common permissions and otherwise output each file name followed by its
#		permissions.
#	c 	Write a shell script to validate password strength. Here are a few assumptions for the
#		password string.
#		Length – minimum of 8 characters.
#		Contain both alphabet and number.
#		Include both the small and capital case letters.
#		If the password doesn’t comply with any of the above conditions, then the script
#		should report it as a <Weak Password>."
#Written By:
#Arun Jose
#S4CS
#Roll No. 12
>file1.txt

echo "First character in each line deleted: "
sed "s/^.//g" file.txt
echo ""

echo ""
echo "Last character in each line deleted: "
sed "s/.$//" file.txt
echo ""

echo ""
echo "Swap first and second words in every line: "
sed -e "s/\([^ ]*\) *\([^ ]*\)/\2 \1 /g" file.txt
echo ""

echo ""
echo "Redirect result of who to file1 and read: "
OUTPUT="$(who)"
echo "${OUTPUT}" >> file1.txt
more file1.txt

echo ""
echo "Is the command line argument a file or a directory: "
ARG=$1
if [ -d "${ARG}" ] ; then
    echo "Directory";
else
    if [ -f "${ARG}" ]; then
        echo "File";
    else
        echo "Other";
        exit 1
    fi
fi

for i in $*  
do  
if [ -f $i ]  
then  
a="$(tr '[a-z]' '[A-Z]' < $i)"
>$i
echo "${a}" >> $i 
fi  
done 

echo ""
echo "When did the user start using the system: "
last who

echo ""
echo "Line in a file between given file numbers: "
s=$2
n=$3
sed -n $s,$n\p file.txt

for i in $*
do
if [ -f $i ]
then
sed -ie '/POD/d' $i
fi
done

echo ""
echo "Prints arguments in reverse order: "
for i in "$@"
do
j=$i" "$j
done
echo "$j"

echo ""
echo "Checks permissions of two files: "
dir1=$1
dir2=$4
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

echo ""
echo "Password Strength: "
read password
char="$(echo -n $password | wc -m)"
alphanum=0
if [[ $password =~ [[:alpha:]] && $password =~ [[:digit:]] ]]; then
    alphanum=1
fi
case=0
if [[ "$password" =~ [[:upper:]] ]]; then
  	if [[ "$password" =~ [[:lower:]] ]]; then
  		case=1
  	fi
fi
if [ $char > 8 ] 
then
if [ $alphanum == 1 ] 
then
if [ $case == 1 ] 
then
echo "Strong password"
else
echo "Weak password"
fi
else
echo "Weak password"
fi
else
echo "Weak password"
fi