printf "%s\n" "Aim:"
printf "%s\n" "Write a shell script that folds long lines into 40 columns. Thus any line that exceeds 40 characters must be broken after 40th ; a\ is to be appended as the indication of folding and the processing is to be continued with the residue. The input is to be through a text file created by the user."
printf "%s\n" "Written By: "
printf "%s\n" "Arun Jose"
printf "%s\n" "S4CS"
printf "%s\n" "Roll No. 12"
echo ""

if [[ $# -ne 1 ]]
then
  	echo "Enter file as argument"
    exit
fi

if [[ !(-a $1) ]]
then
   	echo "Enter valid file"
    exit
fi

n=`wc -l $1 | cut -d " " -f 1`
i=1

while [ $i -le $n ]
do
    line=`sed -n "$i p" $1`
    cc=`echo $line | wc -c | cut -d " " -f 1`
    while [ $cc -ge 40 ]
    do
        ext=`echo $line | cut -c 41-`
        line=`echo $line | cut -c 1-40`
        echo "$line \\"
        line=$ext
        cc=`echo $ext | wc -c | cut -d " " -f 1`
    done
echo "$line"
i=`expr $i + 1`
done