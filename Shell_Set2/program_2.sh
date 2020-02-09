printf "%s\n" "Aim:"
printf "%s\n" "Write a script that compares two directories dir1 and dir2(supplied as arguments) and copies to dir1 from dir2 every file that is not present in dir1."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

dir1=$1
dir2=$2

diff -q dir1 dir2
rsync -av dir1/ dir2