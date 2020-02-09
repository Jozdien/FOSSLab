printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script to delete all lines containing a specific word in one or more file supplied as argument to it."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

sed -i '' -e '/The/d' "$@"