#!/usr/bin/perl
# This script merges all files matching '*rawdata*' in the current directory into a single CSV file.
# Each file's contents are appended to 'All-Data.csv', separated by a newline.

use strict;    # Enforce strict variable declaration rules
use warnings;  # Enable warnings to help catch potential issues

# Get a list of all files in the current directory that match the pattern '*rawdata*'
my @docList = glob('*rawdata*');

# Open the output file 'All-Data.csv' for writing (overwrite if it exists)
open( OUTPUT, ">", "All-Data.csv" );

# Loop through each file in the list
foreach my $filename ( @docList ){

	# Open the current input file for reading
	open( INPUT, $filename );

	# Print the entire contents of the input file to the output file
	print OUTPUT <INPUT>;
	# Add a newline after each file's contents for separation
	print OUTPUT "\n";
    
	# Close the input file
	close( INPUT );
}

# Close the output file
close( OUTPUT );