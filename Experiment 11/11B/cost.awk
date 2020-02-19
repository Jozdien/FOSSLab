{
	if (match($1, /^electrical$/)) {
		eee += $2;
	} else if (match($1, /^mechanical$/)) {
		mec += $2;
	} else if (match($1, /^computers$/)) {
		cse += $2;
	} else if (match($1, /^civil$/)) {
		civ += $2;
	}
}
END {
	print "Electrical : " eee
	print "Mechanical : " mec
	print "Computers  : " cse
	print "Civil      : " civ
	print "Total      : " eee+mec+cse+civ
}
