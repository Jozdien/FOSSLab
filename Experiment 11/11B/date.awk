{
	split("JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC", month, " ")
	date=$1
	split(date, dat, "-")
	dat[2] += 0;
	print "The day is " dat[1] " | The month is " month[dat[2]] " | The year is " dat[3]
}
