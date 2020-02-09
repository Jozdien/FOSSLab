printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script which receives two file names as arguments. It should check whether the two file contents are same or not. If they are same then second file should be deleted."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

dir1=$1
dir2=$2

cmp --silent $dir1 $dir2 && rm "$dir2" && echo "$dir2 removed" || echo "Files are different"