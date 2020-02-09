printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that will take an input file and remove identical lines."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

echo "Enter file name: "
read file

sort "$file" |uniq -u|tee "$file"