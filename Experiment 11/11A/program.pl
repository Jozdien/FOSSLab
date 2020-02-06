# Create a text file and answer the following queries :
# a) Search for the pattern ‘apple’ in the file and display the number of occurences.
# b) Count the number of words that ends with ‘e’
# c) Count the number of words that starts with ‘ap’
# d) Search for words containing ‘a’ or ‘s’
# e) Search for words containing zero or more occurrence of ‘e’
# f) Search for words containing one or more occurrence of ‘e’
# g) Search for words containing the letters ‘l’ and ‘m’, with any number of characters in between

# Written by: Arun Jose, S4 CS, Roll No. 12
# Date: 06/02/20

open my($file), '<', 'text.txt' or die "Error";
$count_e = 0;
$count_ap = 0;
$count_as = 0;

while ( my $line = <$file> ) 
{
    chomp($line);
    foreach $word (split(' ', $line))
    {
        if($word eq "apple")
        {
        	$freq{$word}++;
        }
        if($word =~ /e$/)
        {
        	$count_e++;
        }
        if($word =~ /^ap/)
        {
        	$count_ap++;
        }
        if((index($word, "a") != -1) or (index($word, "s") != -1))
        {
        	$words_as{$word}++;
        }
        if(index($word, "e") != -1)
        {
        	$words_e{$word}++;
        }
        if((index($word, "l") != -1) and (index($word, "m") != -1))
        {
        	$words_lm{$word}++;
        }
    }
}

print "Count of apple: $freq{apple}\n";
print "Count of words ending with e: $count_e\n";
print "Count of words starting with ap: $count_ap\n";
print "Words containing a or s:\n";
foreach $word (sort keys %words_as)
{
	print "\t$word\n";
}
print "Words containing one or more e:\n";
foreach $word (sort keys %words_e)
{
	print "\t$word\n";
}
print "Words containing both l and m:\n";
foreach $word (sort keys %words_lm)
{
	print "\t$word\n";
}