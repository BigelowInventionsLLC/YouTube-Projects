#!/usr/bin/perl
use strict;
use warnings;

my @docList = glob('*rawdata*');

open( OUTPUT, ">", "All-Data.csv" );

foreach my $filename ( @docList ){

	open( INPUT, $filename );

	print OUTPUT <INPUT>;
	print OUTPUT "\n";
	
	close( INPUT );
}

close( OUTPUT );