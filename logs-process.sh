#!/bin/bash

# unzip files
gunzip *.log.gz

# process headers
# extract text | grab datetime & height | add log filename > save txt file
grep "applied to UtxoState at height" *.log | awk '{print $1, $20}' | sed 's/.log:/\ /g' > $NODE-processed.txt

# remove raw files
rm *.log



