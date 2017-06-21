#!/bin/sh

# Variables definition
sourcefile=$1
out_file=/tmp/out_file
out_file1=/tmp/out_file1

# Data formatting
echo "$(tail -n +2 $sourcefile)" > $sourcefile
awk -F'"' -v OFS='' '{ for (i=2; i<=NF; i+=2) gsub(",", "", $i) } 2' $sourcefile > $out_file
sed 's/\"//g' $out_file  > $out_file1

# Removing tmp files
rm $out_file
rm $out_file1

