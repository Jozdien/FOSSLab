printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that, given a file name as the argument will count vowels, blank spaces, characters, number of line and symbols."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

file=$1

echo "Vowels : $(cat $file | grep -o "[aAeEiIoOuU]" |wc -l)"
echo "Characters : $(cat $file | wc -c)"
echo "Blank lines : $(grep  -c '^$' $file)"
echo "Lines : $(cat $file|wc -l )"
echo "Symbols: $(cat $file | grep -o "[@#$%^&*()_-+={}|\:;,<.>/?]" |wc -l)"