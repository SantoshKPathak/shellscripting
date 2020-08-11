#!/bin/sh

INDEX=1

while [ $INDEX -lt 5 ]
do
  echo "index is $INDEX"
  #mathematical expressions are enclosed in double parenthesis
  (( INDEX++ ))
done

