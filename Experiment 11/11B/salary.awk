{
	if ($1 < 10000) {
		da = 0.45*$1;
		hra = 0.15*$1;
	} else {
		da = 0.5*$1;
		hra = 0.2*$1;
	}
	print "Basic Salary       : " $1
	print "D.A.               : " da
	print "H.R.A.             : " hra
	print "\n"
}
