import glob

# Create a new output file to store all of the data.
with open('output.csv', 'w') as outputFile:

    # Get list of input file names.
    inputFileList = glob.glob("data_*.csv")
    
    # Open one data file at a time and write it to the output file.
    for inputFile in inputFileList:
        with open(inputFile, 'r') as sourceFile:

            # Read and write one line at a time.
                # Recommended by Python documentation for efficiency and speed.
            for line in sourceFile:
                outputFile.write(line)

            # Write newline character so the 1st line of the next file starts on a new line.
            outputFile.write("\n")

# All files automatically close because the "with" statement was used.