#!/bin/bash

## What is the technical term for the code on Line 1
## What does it accomplish

#The technical term is shebang 
#what shebang does is indicates the operating system what should be used to execute the file

# ----------------------------
# Simple File Processing Script
# ----------------------------

##Explain lines 11 - 13. What are they and where are they used later in the script?
#Line 11 is to check whetrher the input file exists or not.
#Line 13 will terminate the script and indicate an error message.
#They are used in lines 11-14 to act as a safety check before processing.
INPUT_FILE="input/test.txt"
INPUT_FILE_1="input/aydn_test.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="output/processed.txt"

mkdir -p "$OUTPUT_DIR"



if [ ! -f "$INPUT_FILE" ]; then
echo "Error: Input file not found!"
exit 1
fi

echo "Processing file: $INPUT_FILE"
while IFS= read -r line
do

processed_line="PROCESSED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"


echo "$processed_line" >> "$OUTPUT_FILE"

done < "$INPUT_FILE"
echo "DONE!"
echo "Processed lines have been saved to: $OUTPUT_FILE"