#!/bin/bash
x=1
while [ $x -le 5 ]
do
echo "welcome $x times"
x=$(( $x + 1 ))
done
