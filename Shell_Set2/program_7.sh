printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that displays a list of all the files in the current directory to which the user has read, write and execute permissions."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

for  file  in *
do
	if [ -f  $file ]
	then
		if [ -r  $file -a -w  $file -a -x  $file ]
		then
			ls $file
		fi
	fi
done