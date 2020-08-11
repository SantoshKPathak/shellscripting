#!/bin/bash
LINE_NUM=1

#while loop reads file line by line whereas for loop read file word by word
# better to use while loop for reading file
while read LINE
do
    echo "$LINE_NUM : $LINE"
    (( LINE_NUM++ ))
done < inputfile.txt #send the file to while loop for reading

echo "total lines in file: $(( LINE_NUM-1 ))"
